import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/burger.dart';
import 'package:restaurant_app/screens/homePage.dart';
import 'package:restaurant_app/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(context),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/burger': (context) => Burger(),
      },
    );
  }
}
