import 'package:firebase_auth/firebase_auth.dart';

class AuthClass {

  FirebaseAuth auth = FirebaseAuth.instance;


  //Create an account
  Future createAccount({required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
      );
      return 'Account Created';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return 'Error Occurred, Try again';
    }
  }




  //Sign in to account

  Future signIn({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email,
          password: password,
      );
      return 'Welcome';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
  }




 //Reset password
  Future<String> resetPassword({required String email, required String password}) async {
    try {
      await auth.sendPasswordResetEmail(
        email: email,
      );
      return 'Email Sent';
    } catch(e) {
      return 'Error occurred';
    }
  }





  //Sign out
  void signOut(){
    auth.signOut();
  }
}