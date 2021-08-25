import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
  static const String id = 'Settings_Screen';

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
          title: const Text('Settings'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 0.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.people,
                      color: Colors.blue[900],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Edit Personal Profile',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Colors.blue[900],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Add Bank Account',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.question_answer,
                      color: Colors.blue[900],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Customer Support',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.blue[900],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'FAQs',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: [
                   Icon(
                      Icons.star,
                     color: Colors.blue[900],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Rate & Share our app',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.power_settings_new,
                      color: Colors.blue[900],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
