import 'package:flutter/material.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);
  static const String id = 'MyProfile_Screen';

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
          title: const Text('Personal Profile'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
             const SizedBox(
                height: 50.0,
              ),
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 50.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Form(
                key: null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.grey),
                        cursorColor: Colors.grey,
                        textInputAction: TextInputAction.next,
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
                          labelText: 'Username',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Ubuntu-Regular',
                          ),
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.grey),
                        cursorColor: Colors.grey,
                        textInputAction: TextInputAction.next,
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
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: const TextStyle(color: Colors.grey),
                        cursorColor: Colors.grey,
                        textInputAction: TextInputAction.next,
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
                          labelText: '**************',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Ubuntu-Regular',
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        obscureText: true,
                        style: const TextStyle(color: Colors.grey),
                        cursorColor: Colors.grey,
                        textInputAction: TextInputAction.next,
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
                          labelText: '+2347012345678',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Ubuntu-Regular',
                          ),
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ),
                        ),
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
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue.shade900),
                            // minimumSize: MaterialStateProperty.all<Size>(),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 15.0)),
                            textStyle: MaterialStateProperty.all(const TextStyle(
                              fontSize: 20.0,
                            )),
                          ),
                          child: const Text(
                            'Confirm Edit',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
