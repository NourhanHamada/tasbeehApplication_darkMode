import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tasbeh_application/constant.dart';
import 'package:tasbeh_application/view/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'view/screens/azkar_details_screen.dart';
import 'view/screens/azkar_screen.dart';
import 'view/screens/sebha_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/home' : (context) => const HomeScreen(),
        '/azkar' : (context) => const AzkarScreen(),
        '/azkarDetails' : (context) => const AzkarDetailsScreen(),
        '/sebha' : (context) =>  SebhaScreen(),
      },

      debugShowCheckedModeBanner: false,
      title: 'Sebha App',
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      home: AnimatedSplashScreen(
        backgroundColor: background,
        splash: tasbeh,
        nextScreen: const HomeScreen(),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        centered: true,
      ),
    );
  }
}
