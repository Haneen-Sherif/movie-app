import 'package:flutter/material.dart';
import 'package:project/models/items_model.dart';

class Cart extends ChangeNotifier {
  List selectedProducts = [];
  double price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.price!;
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price!;
    notifyListeners();
  }
}
