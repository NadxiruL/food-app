import 'package:http/http.dart' as http;
import '../models/blend.dart';

class BlendRemoteService {
  Future<List<Blend>?> getBlends() async {
    var client = http.Client();
    var uri = Uri.parse('https://blend.com.my/recent.json');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      print(json);
      return blendFromJson(json);
    }
  }
}













// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import '../models/blend.dart';

// Future<Blend?> getAllBlendData() async {
//   final response = await http.get(
//     Uri.parse("https://blend.com.my/recent.json"),
//     headers: {
//       HttpHeaders.contentTypeHeader: "application/json",
//     },
//   );
//   try {
//     if (response.statusCode == 200) {
//       List<dynamic> item = json.decode(response.body);

//       // result = Blend.fromJson(item);

//       List<Blend> blend = item
//           .map(
//             (dynamic item) => Blend.fromJson(item),
//           )
//           .toList();
//       blend;
//       print(item);
//     } else {
//       print("error");
//     }
//   } catch (e) {
//     log(e.toString());
//   }

//   // return blends;
// }
