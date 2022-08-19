import 'package:flutter/material.dart';
import '../services/services.dart';
import 'blend.dart';

class BlendProvider with ChangeNotifier {
  List<Blend>? blends;
  List<Blend>? filteredProducts;
  bool isLoading = false;
  String searchText = '';

  getData() async {
    blends = (await BlendRemoteService().getBlends())!;
    filteredProducts = blends;
    if (blends != null) {
      isLoading = true;
    }
    notifyListeners();
  }

  int selectedIndex = 0;
  void onItemTapFunc(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  searchProduct(String keyword) {
    //  blends = (await BlendRemoteService().getBlends())!;
    filteredProducts = blends?.where((product) {
      return product.product.name.toLowerCase().contains(keyword.toLowerCase());
    }).toList();
    notifyListeners();
  }

  // void addProduct() {
  //   products.add(Blend(customer, product, createdAt))
  // }
}
