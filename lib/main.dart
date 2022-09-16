import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myfirstapp/hamberger/contact.dart';
import 'package:myfirstapp/hamberger/trackorder.dart';
import 'package:page_transition/page_transition.dart';

import 'screen/beforhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '',
      // routes: {
      //   '/contact':(context) => Contact(),
      //   'trackorder':(context) => TrackOrder(),
      // },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/walking-pothos.json'),
      backgroundColor: Colors.grey.shade900,
      nextScreen: const HomeScreen(),
      splashIconSize: 400,
      duration: 3500,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
