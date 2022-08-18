import 'package:flutter/material.dart';
import '../services/services.dart';
import 'blend.dart';
import 'package:http/http.dart' as http;

class BlendProvider with ChangeNotifier {
  List<Blend>? blends;
  bool isLoading = false;
  // List<Blend?> products = [];
  // List<Blend?> filteredProducts = [];
  // List<Blend> items = [];
  // String searchText = '';

  // final getProducts = BlendRemoteService().getBlends();
  // bool isLoading = true;

  // Future<List<Blend>?> getBlends() async {
  //   var client = http.Client();
  //   var uri = Uri.parse('https://blend.com.my/recent.json');
  //   var response = await client.get(uri);

  //   if (response.statusCode == 200) {
  //     var json = response.body;
  //     print(json);
  //     return blendFromJson(json);
  //   }
  // }

  // Future<List<Blend>?> getBlends() async {
  //   var client = http.Client();
  //   var uri = Uri.parse('https://blend.com.my/recent.json');
  //   var response = await client.get(uri);

  //   if (response.statusCode == 200) {
  //     var json = response.body;
  //     print(json);
  //     return blendFromJson(json);
  //   }
  // }

  getData() async {
    // isLoading = true;
    blends = (await BlendRemoteService().getBlends());
    // isLoading = false;
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

  // void searchProduct() async {
  //   products = (await BlendRemoteService().getBlends())!;
  //   filteredProducts = products.where((product) {
  //     return product!.product.name
  //         .toLowerCase()
  //         .contains(searchText.toLowerCase());
  //   }).toList();
  //   notifyListeners();
  // }

  // void addProduct() {
  //   products.add(Blend(customer, product, createdAt))
  // }
}
