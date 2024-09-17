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
    applyPromotionB();
    applyPromotionC();
    applyPromotionDE();

    notifyListeners();
  }

  void applyPromotionB() {
    int itemCountB = 0;
    double priceB = 0.0;
    for (var element in cart) {
      if (element.id == 'B') {
        itemCountB += element.quantity;
        priceB = element.price;
      }
    }

    int pairs = itemCountB ~/ 2;
    if (pairs > 0) {
      total -= pairs * (priceB * 2 - 1.25);
      for (var element in cart) {
        if (element.id == 'B') {
          element.promotion = true;
        }
      }
    } else {
      for (var element in cart) {
        if (element.id == 'B') {
          element.promotion = false;
        }
      }
    }
  }

  void applyPromotionC() {
    int itemCountC = 0;
    for (var element in cart) {
      if (element.id == 'C') {
        itemCountC += element.quantity;
      }
    }

    int freeItems = itemCountC ~/ 4;
    if (freeItems > 0) {
      total -= freeItems * 25;
      for (var element in cart) {
        if (element.id == 'C') {
          element.promotion = true;
        }
      }
    } else {
      for (var element in cart) {
        if (element.id == 'C') {
          element.promotion = false;
        }
      }
    }
  }

  void applyPromotionDE() {
    int itemCountD = 0;
    double priceD = 0.0;
    int itemCountE = 0;
    double priceE = 0.0;
    for (var element in cart) {
      if (element.id == 'D') {
        itemCountD += element.quantity;
        priceD = element.price;
      } else if (element.id == 'E') {
        itemCountE += element.quantity;
        priceE = element.price;
      }
    }

    int pairs = itemCountD < itemCountE ? itemCountD : itemCountE;
    if (pairs > 0) {
      total -= pairs * (priceD + priceE - 3.00);
      for (var element in cart) {
        if (element.id == 'D' || element.id == 'E') {
          element.promotion = true;
        }
      }
    } else {
      for (var element in cart) {
        if (element.id == 'D' || element.id == 'E') {
          element.promotion = false;
        }
      }
    }
  }
}
