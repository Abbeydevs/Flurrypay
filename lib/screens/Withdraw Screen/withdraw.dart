import 'package:flutter/material.dart';



class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);
  static String id = 'Withdraw_Screen';

  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text('Withdraw Funds'),
      ),
      body: const Center(
        child: Text('This withdraw page is coming soon.'),
      ),
    );
  }
}
