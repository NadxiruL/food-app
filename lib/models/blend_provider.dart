import 'package:deligram/services/services.dart';
import 'package:flutter/material.dart';
import 'blend.dart';

class BlendProvider with ChangeNotifier {
  List<Blend> filteredProducts = [];
  int? nomborIndex = 0;
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
  int selectedIndex = 0;
  void onItemTapFunc(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void searchProduct(String inputText) async {
    filteredProducts = (await BlendRemoteService().getBlends())!;
    notifyListeners();
  }
}
