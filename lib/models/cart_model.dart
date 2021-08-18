import 'package:flutter_application_with_git/core/store.dart';
import 'package:flutter_application_with_git/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // ignore: unused_field
  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}
