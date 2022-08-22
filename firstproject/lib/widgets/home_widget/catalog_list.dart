import 'package:firstproject/pages/home_page_detail.dart';
import 'package:flutter/material.dart';

import '../../models/catalog.dart';
import 'add_to_cart.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
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
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // final textTheme = theme.textTheme;
    return Container(
      decoration: BoxDecoration(
        // color: MyTheme.creamcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.only(top: 5, left: 10, bottom: 5),
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
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Text(catalog.desc, style: Theme.of(context).textTheme.caption),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding:
                      const EdgeInsets.only(left: 0, right: 20, top: 0, bottom: 0),
                  children: [
                    Text(
                      "\$${catalog.price}",
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    AddtoCart(
                      catalog: catalog,
                    )
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
