import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flurrypay/screens/';

class Giftcard extends StatelessWidget {
  const Giftcard({Key? key}) : super(key: key);
  static const String id = 'giftcard_Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Ubuntu'),
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          elevation: 0,
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
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                    'Choose what you want to do',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),),
                    ),
                    height: MediaQuery.of(context).size.height/ 1.4,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.send,
                                ),
                                Spacer(),
                                Text('Sell Giftcard',
                                style: TextStyle(
                                fontSize: 20.0,
                                ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.payment,
                                ),
                                Spacer(),
                                Text(
                                  'Buy Giftcard',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ],
                            ),
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
    );
  }
}
