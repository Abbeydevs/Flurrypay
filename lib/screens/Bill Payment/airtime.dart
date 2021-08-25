import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildSheet(BuildContext context) => DraggableScrollableSheet(
  initialChildSize: 0.5,
  minChildSize: 0.5,
  maxChildSize: 0.9,
  builder: (_, controller) => Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.0),
      ),
    ),
    padding: const EdgeInsets.all(20.0),
    child: ListView(
      controller: controller,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: SizedBox(
                  child: Divider(
                    height: 2.0,
                    thickness: 3.0,
                  ),
                  width: 40.0,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Airtime',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(
                color: Colors.grey,
                height: 1.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
                      child: Image.asset(
                        'images/mtn.png',
                        width: 70.0,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                      child: Image.asset(
                        'images/airtel.png',
                        width: 70.0,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                      child: Image.asset(
                        'images/glo.png',
                        width: 50.0,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                      child: Image.asset(
                        'images/9mobile.png',
                        width: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);