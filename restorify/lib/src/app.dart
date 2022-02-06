import 'package:flutter/material.dart';
import 'package:restorify/src/screens/home.dart';
import 'package:restorify/src/screens/login.dart';
import 'package:restorify/src/screens/start.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restorify',
      theme: ThemeData(accentColor: Colors.orange, primarySwatch: Colors.blue),
      home: StartScreen(),
    );
  }
}
