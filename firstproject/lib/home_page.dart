import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Sajjad Ali";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lets Learn"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
