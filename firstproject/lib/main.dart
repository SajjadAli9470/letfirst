import 'package:firstproject/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

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
