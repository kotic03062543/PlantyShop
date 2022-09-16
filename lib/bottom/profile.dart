// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProFile extends StatefulWidget {
  static const routeName = '/';

  const ProFile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProFile'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text('ProFile Screen'),
        ],
      )),
    );
  }
}
