// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfirstapp/hamberger/contact.dart';
import 'package:myfirstapp/hamberger/trackorder.dart';

class SideDrawerMenu extends StatelessWidget {
  const SideDrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(),
          ListTile(
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.people,
              color: Colors.green[400],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Track order',
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.card_giftcard,
              color: Colors.green[400],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TrackOrder();
              }));
            },
          ),
          ListTile(
            title: Text(
              'Contact',
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.green[400],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Contact();
              }));
            },
          ),

          // ElevatedButton.icon(
          //   label: Text('LOGOUT'),
          //   icon: Icon(Icons.logout),
          //   onPressed: () {
          //     print('LOGOUT');
          //   },
          // )
        ],
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 40, 15, 40),
      color: Colors.green[200],
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Planty Shop',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
