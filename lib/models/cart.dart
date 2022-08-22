import 'package:flutter/material.dart';
import 'blend.dart';

class Cart {
  final String? name;

  Cart({required this.name});
}

class CartProvider with ChangeNotifier {
  List<Blend>? blends;
  // final Map<String, Cart>? _cartItem = {};
  final List<Cart>? _cartItem = [];

  List<Cart>? get cartItem {
    return [...?_cartItem];
  }

  int get cartCount {
    return _cartItem!.length;
  }

  // Map<String, Cart>? get cartItem {
  //   return {...?_cartItem};
  // }

  void addtoCart(String name) {
    // _cartItem?.update("name", ((value) => Cart(name: blend.product.name)));
    final cart = Cart(name: name);
    _cartItem?.add(cart);
    notifyListeners();
  }
}
