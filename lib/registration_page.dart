import 'package:assignment1/login.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(31.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/register.png',
                  ),
                  Row(
                    children: [
                      Text(
                        'Register Here',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
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
                      Text('Enter your mobile number'),
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
                        'Login',
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
                                      borderSide:
                                          BorderSide(color: Colors.blueGrey)),
                                );
                              },
                              child: Image.asset(
                                'assets/images/google.png',
                                height: 20,
                                width: 20,
                              ))),
                      Container(
                        width: 150,
                        height: 50,
                        child: OutlinedButton(
                            onPressed: () {
                              decoration:
                              InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blueGrey)),
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
        ),
      )),
    );
  }
}
