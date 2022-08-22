import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddtoCart extends StatelessWidget {
  final Item catalog;
  AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);


  final _catalog = CatalogModel();
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
        onPressed: () {
          // if (isInCart == true) {
          //   isInCart = false;
          // } else if (isInCart == false) {
          //   isInCart = true;
          // }
          if (!isInCart) {
            _cart.catalog = _catalog;

            _cart.add(catalog);

            // setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).buttonColor),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            )),
        child:
            isInCart ? const Icon(Icons.done) : const Icon(CupertinoIcons.cart_badge_plus));
  }
}
