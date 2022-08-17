import 'package:flutter/material.dart';
import 'blend.dart';
import 'package:http/http.dart' as http;

class BlendProvider with ChangeNotifier {
  // Blend? blend;
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
}
