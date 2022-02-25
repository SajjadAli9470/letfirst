// ignore_for_file: prefer_const_constructors

import 'package:firstproject/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:firstproject/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  // String for any word
  // double for float
  // int for integer
  // num for int and double
  // var for any data type
  // const for constant value

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      routes: {
        "/": (context) => LoginPage(),
        // "/Login": (context) => LoginPage()
      },
      // themeMode: ThemeMode.light,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
