import 'package:flutter/material.dart';
import 'package:project_2/Contact.dart';
import 'package:project_2/Detail.dart';
import 'package:project_2/Image.dart';
import 'package:project_2/ListvierPage.dart';
import 'package:project_2/Login.dart';
import 'package:project_2/MainMenu.dart';
import 'package:project_2/ShowPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/Detail': (context) => Detail(),
        '/Show': (context) => ShowPage(),
        '/two': (context) => MainMenu(),
        '/three': (context) => ListvierPage(),
        '/four': (context) => Images(),
        '/five': (context) => Contact(),
      },
      //home: HomePage(),
    );
  }
}
