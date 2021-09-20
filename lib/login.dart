import 'package:assignment1/forgot_password.dart';
import 'package:assignment1/home.dart';
import 'package:flutter/material.dart';

import 'registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/heart.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 36),
                        child: Container(
                          width: 146,
                          child: Text(
                            'Login to a lovely life.',
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/couple.png'),
                ],
              ),
              SizedBox(
                height: 39.98,
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
                    borderRadius: BorderRadius.circular(10)),
              )),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text('Enter your Password'),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(10)),
                  )),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Text('Trouble login?')),
                ],
              ),
              Container(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text('---------------- Or ---------------'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                        onPressed: () {
                          decoration:
                          InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueGrey)),
                          );
                        },
                        child: Image.asset(
                          'assets/images/google.png',
                          height: 20,
                          width: 20,
                        )),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                        onPressed: () {
                          decoration:
                          InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueGrey)),
                          );
                        },
                        child: Icon(Icons.facebook)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationPage()));
                  },
                  child: Text('Don’t have an account?')),
              SizedBox(
                height: 20,
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
    )));
  }
}
