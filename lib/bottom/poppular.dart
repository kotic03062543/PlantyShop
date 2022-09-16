import 'package:flutter/material.dart';
  
class PoppuLar extends StatefulWidget {
    static const routeName = '/';
 
    const PoppuLar({Key? key}) : super(key: key);
  
    @override
    State<StatefulWidget> createState() {
        return _HomeState();
    }
}
  
class _HomeState extends State<PoppuLar> {
  
    @override
    Widget build(BuildContext context) {
  
        return Scaffold(
            appBar: AppBar(
                title: Text('PoppuLar'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('PoppuLar Screen'),
                    ],
                )
            ),
        );
    }
}