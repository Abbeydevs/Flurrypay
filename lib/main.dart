// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flurrypay/screens/Bill%20Payment/billpayment.dart';
import 'package:flurrypay/screens/Register/create_account.dart';
import 'package:flurrypay/screens/Reset_password/forgotpassword.dart';
import 'package:flurrypay/screens/Withdraw%20Screen/withdraw.dart';
import 'package:flurrypay/screens/profile.dart';
import 'package:flurrypay/screens/Giftcard/sellgiftcard.dart';
import 'package:flurrypay/screens/settings.dart';
// import 'package:flurrypay/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flurrypay/screens/Signin/login.dart';
import 'package:flurrypay/screens/homepage.dart';
import 'package:flurrypay/screens/Giftcard/giftcard.dart';
import 'package:flurrypay/screens/Giftcard/buygiftcard.dart';
import 'package:flurrypay/screens/Bitcoin/bitcoin.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Flurrypay());
}

class Flurrypay extends StatefulWidget {
  const Flurrypay({Key? key}) : super(key: key);

  @override
  _FlurrypayState createState() => _FlurrypayState();
}

class _FlurrypayState extends State<Flurrypay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: const Login(),
      initialRoute: CreateAccount.id,
      routes: {
        Login.id: (context) => const Login(),
        ForgotPassword.id: (context) => const ForgotPassword(),
        Homepage.id: (context) => const Homepage(),
        Giftcard.id: (context) => const Giftcard(),
        SellGiftcard.id: (context) => const SellGiftcard(),
        BuyGiftcard.id: (context) => const BuyGiftcard(), //To edit
        Bitcoin.id: (context) => const Bitcoin(),
        Billpayment.id: (context) => const Billpayment(),
        MyProfile.id: (context) => const MyProfile(),
        Settings.id: (context) => const Settings(),
        CreateAccount.id: (context) => const CreateAccount(),
        Withdraw.id: (context) => const Withdraw(),
        // Home.id: (context) => const Home(),
      },
    );
  }
}
