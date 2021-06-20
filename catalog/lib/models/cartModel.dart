import 'package:catalog/models/catalog.dart';

class CartModel {
  //catalog field
  CatalogModel _catalog;

//collection of ids
  final List<int> _itemids = [];
//get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newcatalog) {
    _catalog = newcatalog;
  }

  // get items in cart

  List<Item> get items => _itemids.map((id) => _catalog.getByID(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

//add item

  void add(Item item) {
    _itemids.add(item.id);
  }

//remove item
  void remove(Item item) {
    _itemids.remove(item.id);
  }
}
