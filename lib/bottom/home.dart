// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myfirstapp/homemenu/homescreen.dart';
import 'package:myfirstapp/bottom/poppular.dart';
import 'package:myfirstapp/bottom/shoppingcard.dart';
import 'profile.dart';

class Launcher extends StatefulWidget {
  static const routeName = '/';

  const Launcher({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LauncherState();
  }
}

class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  final List _pageWidget = [
    const HomeScr(),
    const PoppuLar(),
    const ShoppingCard(),
    const ProFile(),
  ];
  final List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.home),
      label: 'Home',
      backgroundColor: Color.fromRGBO(56, 142, 60, 1),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.heart),
      label: 'Poppular',
      backgroundColor: Color.fromRGBO(56, 142, 60, 1),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.shoppingBag),
      label: 'ShoppingCard',
      backgroundColor: Color.fromRGBO(56, 142, 60, 1),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.user),
      label: 'ProFile',
      backgroundColor: Color.fromRGBO(56, 142, 60, 1),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(234, 229, 9, 1),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}
