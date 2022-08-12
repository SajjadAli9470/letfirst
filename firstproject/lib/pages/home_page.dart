// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:firstproject/utils/routes.dart';
import 'package:firstproject/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/home_widget/catalog_header.dart';
import '../widgets/home_widget/catalog_list.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Sajjad Ali";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
    // print(decodedData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, MyRoutes.cartRoute),
        },
        backgroundColor: MyTheme.darkBluishColor,
        child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList()
              else
                Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}






// appBar: AppBar(
//   title: Text("Sajjad Ali"),
// ),
// body: Padding(
//   padding: const EdgeInsets.all(16.0),
//   child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
//       ? GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 16,
//             mainAxisSpacing: 16,
//           ),
//           itemBuilder: (context, index) {
//             final item = CatalogModel.items[index];
//             return Card(
//               clipBehavior: Clip.antiAlias,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               child: GridTile(
//                 header: Container(
//                   child: Text(
//                     item.name,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple,
//                   ),
//                 ),
//                 child: Image.network(item.image),
//                 footer: Container(
//                   child: Text(
//                     item.price.toString(),
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple,
//                   ),
//                 ),
//               ),
//             );
//           },
//           itemCount: CatalogModel.items.length,
//         )
//       // ? ListView.builder(
//       //     itemCount: CatalogModel.items.length,
//       //     itemBuilder: (context, index) {
//       //       return ItemWidget(
//       //         item: CatalogModel.items[index],
//       //       );
//       //     },
//       //   )
//       : Center(
//           child: CircularProgressIndicator(),
//         ),
// ),
// drawer: MyDrawer(),
