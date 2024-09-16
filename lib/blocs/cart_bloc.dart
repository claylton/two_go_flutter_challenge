
import 'package:flutter/material.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';

class CartBloc extends ChangeNotifier {
  List<ProductItemModel> cart = [];
  double total = 0.0;

  get() {
    return cart;
  }

  add(ProductItemModel item) {
    cart.add(item);
    calculateTotal();
  }

  remove(ProductItemModel item) {
    cart.removeWhere((element) => element.id == item.id);
    calculateTotal();
  }

  bool itemInCart(ProductItemModel item) {
    bool result = false;
    for (var element in cart) {
      if (element.id == item.id) result = true;
    }
    return result;
  }

  increase(ProductItemModel item) {
    if (item.quantity < 10) {
      item.quantity++;
      calculateTotal();
    }
  }

  decrease(ProductItemModel item) {
    if (item.quantity > 1) {
      item.quantity--;
      calculateTotal();
    }
  }

  calculateTotal() {
    total = 0.0;
    for (var element in cart) {
      total += element.price * element.quantity;
    }
    notifyListeners();
  }
}