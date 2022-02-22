import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Sajjad Ali bin Abid Ali";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Welcome $name"),
        ),
      ),
      // drawer: Drawer(),
    );
  }
}
