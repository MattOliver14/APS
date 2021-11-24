import 'package:APS_2021_Matt/view/Home.dart';
import 'package:APS_2021_Matt/view/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF5fa7b3)),
          primaryColor: Color(0xFF5fa7b3)),
      routes: {
        "/": (BuildContext context) => HomeSplashScreen(),
        "/Home": (BuildContext context) => HomeScreen()
      },
    );
  }
}
