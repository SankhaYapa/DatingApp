import 'dart:ui';

import 'package:assignment1/login.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
                child: Center(
                    child: Image.asset(
                  'assets/images/people.png',
                  height: 343,
                  width: 343,
                )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 36),
                    child: Text(
                      'Let’s get closer ☺',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 28, right: 28),
                child: Text(
                  'The best place to meet your future partner.',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 36, bottom: 79),
                width: 319,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
