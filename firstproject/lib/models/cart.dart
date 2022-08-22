import 'package:firstproject/core/store.dart';
import 'package:firstproject/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // static final cartModel = CartModel._internal();
  // CartModel._internal();
  // factory CartModel() => cartModel;

  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get Catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num totalPrice() => items.fold(0, (total, current) => total + current.price);



 
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
