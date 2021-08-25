import 'package:firebase_auth/firebase_auth.dart';
import 'package:flurrypay/screens/Bill%20Payment/billpayment.dart';
import 'package:flurrypay/screens/Bitcoin/bitcoin.dart';
import 'package:flurrypay/screens/Giftcard/giftcard.dart';
import 'package:flurrypay/screens/Withdraw%20Screen/withdraw.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  static const String id = 'Homepage_Screen';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  String? email = FirebaseAuth.instance.currentUser?.email;

  int currentIndex = 0;
  final screens = [

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: Scaffold(

        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Total Wallet Balance',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'NGN0.00',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30.0,
                        ),
                      ),
                      const Spacer(),
                      const Expanded(
                        child: CircleAvatar(
                          radius: 30.0,
                        )
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  //Search form
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.search,
                    toolbarOptions: const ToolbarOptions(
                      cut: true,
                      copy: true,
                      selectAll: true,
                      paste: true,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          5.0,
                        ),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          5.0,
                        ),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'What do you want to do today?',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                  const Divider(
                    height: 50.0,
                  ),

                  //Buy & Sell Bitcoin Container
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Bitcoin();
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.fromLTRB(0,20,10,0),
                      height: 130,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'Buy & Sell Bitcoins',
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                  'images/bitcoin.png',
                                  width: 50.0,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  //Buy & Sell Giftcard Container
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Giftcard();
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.fromLTRB(0,20,10,0),
                      height: 130,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                        child: Stack(
                          children: [
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text(
                                      'Giftcard',
                                     style: TextStyle(
                                       fontSize: 25.0,
                                       fontWeight: FontWeight.bold,
                                     ),
                                    ),
                                   SizedBox(
                                     height: 10.0,
                                   ),
                                   Text(
                                     'Buy & Sell Giftcards',
                                   ),
                                 ],
                               ),
                               const Spacer(),
                               Image.asset(
                                 'images/giftcard.png',
                                 width: 50.0,
                               )
                             ],
                           ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  //Bill Payment Container
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Billpayment();
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.fromLTRB(0,20,10,0),
                      height: 130,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Bill Payment',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'Airtime, Utility & Internet',
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                  'images/billpayment.png',
                                  width: 50.0,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  //Withdraw Funds Container
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Withdraw();
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.fromLTRB(0,20,10,0),
                      height: 130,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Withdraw Funds',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'Withdraw funds to your Bank',
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                  'images/withdraw.png',
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue[900],
          unselectedItemColor: Colors.grey,
          iconSize: 22.0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}
