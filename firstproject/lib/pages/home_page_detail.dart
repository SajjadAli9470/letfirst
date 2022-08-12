import 'package:flutter/material.dart';

import '../models/catalog.dart';
import 'package:firstproject/widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamcolor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding:
              const EdgeInsets.only(left: 0, right: 20, top: 0, bottom: 0),
          children: [
            Text(
              "\$${catalog.price}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: Colors.red),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkBluishColor),
                    shape: MaterialStateProperty.all(
                      const StadiumBorder(),
                    )),
                child: const Text(
                  "Buy",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(padding: const EdgeInsets.all(8)),
            Center(
              child: Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(
                    catalog.image,
                    height: 300,
                  )),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(
                          MediaQuery.of(context).size.width, 80)),
                ),
                child: Column(
                  children: [
                    const Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 5)),
                    Text(
                      catalog.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: MyTheme.darkBluishColor,
                      ),
                    ),
                    Text(
                      catalog.desc,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            right: 10, left: 10, top: 10, bottom: 0),
                        child: Text(
                          catalog.detail,
                          style: Theme.of(context).textTheme.caption,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
