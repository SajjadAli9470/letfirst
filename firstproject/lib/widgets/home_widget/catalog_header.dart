import 'package:firstproject/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sajjad Ali",
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: MyTheme.darkBluishColor),
        ),
        Text(
          "Trending Products",
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
