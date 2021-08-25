// import 'package:flurrypay/Provider/auth_provider.dart';
import 'package:flurrypay/screens/Register/create_account.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flurrypay/screens/Reset_password/forgotpassword.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flurrypay/screens/homepage.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String id = 'Login_Screen';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  static const String email = 'fredrik.eilertsen@gail.com';
  final bool isValid = EmailValidator.validate(email);

  bool isHidden = true;

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    'Hey there! Welcome back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter your Email Address';
                            }
                            if (!EmailValidator.validate(value)) {
                              return 'Please enter a valid email';
                            }
                          },
                          // controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Email address',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu-Regular',
                            ),
                            suffixIcon: const Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller: passwordController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter your Password';
                            }
                            else {
                              return null;
                            }
                          },
                          // controller: _password,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isHidden,
                          style: const TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu-Regular',
                            ),
                            suffixIcon: IconButton(
                              icon: isHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                              onPressed: togglePasswordVisibility,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const ForgotPassword();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Ubuntu-Regular',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      key: null,
                      onPressed: () async {
                        try {
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text, password: passwordController.text,
                          );
                        }
                        catch(e) {
                          setState(() {
                            if (_formKey.currentState!.validate()) {
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
                        }

                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blue.shade900),
                        // minimumSize: MaterialStateProperty.all<Size>(),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 15.0)),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade900,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'or sign up via',
                        style: TextStyle(
                          color: Colors.grey.shade900,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      key: null,
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blueGrey.shade900),
                        // minimumSize: MaterialStateProperty.all<Size>(),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 15.0)),
                        textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 20.0,
                        )),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'images/google-icon.png',
                            width: 20.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            'Sign up with Google',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17.0,
                            ),
                          ),
                          TextSpan(
                            text: ' Register',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const CreateAccount();
                                    },
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}


