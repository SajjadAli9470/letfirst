// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Sajjad Ali";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sajjad Ali"),
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
