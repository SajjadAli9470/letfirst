
import 'package:flutter/cupertino.dart';

import '../../widgets/themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 100,
        child: Image.network(image),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyTheme.creamcolor,
      ),
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.only(top: 8, left: 8, bottom: 8, right: 8),
    );
  }
}