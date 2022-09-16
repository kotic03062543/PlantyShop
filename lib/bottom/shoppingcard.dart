import 'package:flutter/material.dart';
  
class ShoppingCard extends StatefulWidget {
    static const routeName = '/';
 
    const ShoppingCard({Key? key}) : super(key: key);
  
    @override
    State<StatefulWidget> createState() {
        return _HomeState();
    }
}
  
class _HomeState extends State<ShoppingCard> {
  
    @override
    Widget build(BuildContext context) {
  
        return Scaffold(
            appBar: AppBar(
                title: Text('ShoppingCard'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('ShoppingCard Screen'),
                    ],
                )
            ),
        );
    }
}