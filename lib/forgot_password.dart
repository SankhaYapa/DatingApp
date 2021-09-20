import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(31.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/forgot.png'),
                  SizedBox(
                    height: 67,
                  ),
                  Row(
                    children: [
                      Text('Enter your Email'),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  TextField(
                      decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Send Rest Email',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 169,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                                text:
                                    'By continue to login, you accept our company'),
                            TextSpan(
                                text: 'Term & conditions',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: ' and '),
                            TextSpan(
                                text: 'Privacy policies',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: '.')
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
