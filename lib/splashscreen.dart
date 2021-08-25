import 'package:firebase_auth/firebase_auth.dart';
import 'package:flurrypay/screens/homepage.dart';
import 'package:flurrypay/screens/Signin/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static const String id = 'Splash_Screen';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), () {
      if (auth.currentUser == null){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Login();
            },
          ),
        );
      }
      else  {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Homepage();
            },
          ),
        );
      }
    });
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: FlutterLogo(
          size: 100.0,
        ),
      )
    );
  }
}
