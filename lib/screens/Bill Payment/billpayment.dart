import 'package:flurrypay/screens/Bill%20Payment/utility.dart';
import 'package:flutter/material.dart';
import 'package:flurrypay/screens/Bill%20Payment/airtime.dart';

import 'internet_sub.dart';
import 'cable_sub.dart';

class Billpayment extends StatefulWidget {
  const Billpayment({Key? key}) : super(key: key);
  static const String id = 'Billpayment_Screen';

  @override
  _BillpaymentState createState() => _BillpaymentState();
}

class _BillpaymentState extends State<Billpayment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Bill Payment',
          style: TextStyle(
            color: Colors.black
          ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => buildSheet(context),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.network_cell,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'Airtime',
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => internetBuildSheet(context),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.network_wifi,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'Internet Subscription',
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => cableSubBuildSheet(context),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.tv,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'Cable Subscription',
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => utilitySubBuildSheet(context),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.receipt_long,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'Utility Bills',
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
