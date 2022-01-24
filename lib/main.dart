import 'package:flutter/material.dart';
import 'package:nogizaka_project/home_page.dart';
import 'package:nogizaka_project/navbar.dart';
import 'package:nogizaka_project/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => const SplashPage()});
  }
}
