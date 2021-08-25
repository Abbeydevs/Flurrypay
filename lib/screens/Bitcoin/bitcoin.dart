import 'package:flutter/material.dart';
import 'package:flurrypay/screens/Bitcoin/bitcoinrate.dart';
// import 'package:intl/intl.dart';

class Bitcoin extends StatefulWidget {
  const Bitcoin({Key? key}) : super(key: key);
  static const String id = 'Bitcoin_Screen';

  @override
  _BitcoinState createState() => _BitcoinState();
}
class _BitcoinState extends State<Bitcoin> {
  String selectedValue = 'Buy Bitcoin';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: Scaffold(
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
          title: const Text('Bitcoin Exchange'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (context) => buildSheet(),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        height: 70.0,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Text(
                                'Bitcoin Rate',
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.show_chart,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      'Select what you want to do',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      height: 70.0,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: [
                              'Buy Bitcoin',
                              'Sell Bitcoin',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                  value: value, child: Text(value));
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Form(
                    key: null,
                    child: Column(
                      children: [
                        TextFormField(
                          // controller: passwordController,
                          // validator: (String? value) {
                          //   if (value!.isEmpty) {
                          //     return 'Please Enter your Password';
                          //   }
                          //   if (value.length < 8) {
                          //     return 'Your password should have a minimum of 8 characters';
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          // controller: _password,
                          keyboardType: TextInputType.number,
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
                            labelText: 'How much do you want to buy',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu-Regular',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          // controller: passwordController,
                          // validator: (String? value) {
                          //   if (value!.isEmpty) {
                          //     return 'Please Enter your Password';
                          //   }
                          //   if (value.length < 8) {
                          //     return 'Your password should have a minimum of 8 characters';
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          // controller: _password,
                          keyboardType: TextInputType.text,
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
                            labelText: 'Wallet Address',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu-Regular',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: null,
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
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ),
                      ],
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
}
