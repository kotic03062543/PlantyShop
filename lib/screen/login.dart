// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfirstapp/bottom/home.dart';
import 'package:myfirstapp/homemenu/homescreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Register.png'),
            // fit: BoxFit.cover,
          ),
        ),
        child: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('images/.png'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 550,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                    color: Color.fromRGBO(221, 238, 223, 1),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          hintText: 'Please Email Address',
                          contentPadding: EdgeInsets.all(5),
                          icon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Please enter your password',
                          contentPadding: EdgeInsets.all(5),
                          icon: Icon(Icons.key_rounded),
                        ),
                        // keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: SizedBox(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Launcher();
                              }));
                            },
                            child: Text('Confirm'),
                          ),
                        ),
                      )
                    ],
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
