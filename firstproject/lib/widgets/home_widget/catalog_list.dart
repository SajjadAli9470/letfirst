import 'dart:convert';

import 'package:firstproject/pages/home_page_detail.dart';
import 'package:firstproject/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/catalog.dart';
import '../../pages/home_page.dart ';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDetailPage(catalog: catalog),
                    ),
                  ),
              child: CatalogItem(catalog: catalog));
        },
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // final textTheme = theme.textTheme;
    return Container(
      decoration: BoxDecoration(
        color: MyTheme.creamcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(image: catalog.image)),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  catalog.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: MyTheme.darkBluishColor,
                  ),
                ),
                Text(catalog.desc, style: Theme.of(context).textTheme.caption),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding:
                      EdgeInsets.only(left: 0, right: 20, top: 0, bottom: 0),
                  children: [
                    Text(
                      "\$${catalog.price}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                MyTheme.darkBluishColor),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(),
                            )),
                        child: Text("Buy"))
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
