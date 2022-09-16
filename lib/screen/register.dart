// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Register'),
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
                  height: 470,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                    color: Color.fromRGBO(221, 238, 223, 1),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                  child: Column(
                    key: formkey,
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
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Comfirm Password',
                          hintText: 'Please enter your tel',
                          contentPadding: EdgeInsets.all(5),
                          icon: Icon(Icons.key_rounded),
                        ),
                        // keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Tel',
                          hintText: 'Please enter your tel',
                          contentPadding: EdgeInsets.all(5),
                          icon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Confirm'),
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
