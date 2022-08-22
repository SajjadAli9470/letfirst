import 'package:flutter/material.dart';


class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 80,
        height: 80,
        child: Image.network(image),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8, right: 8),
    );
  }
}
