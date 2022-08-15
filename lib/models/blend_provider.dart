import 'package:flutter/material.dart';
import '../services/services.dart';
import 'blend.dart';

class BlendProvider with ChangeNotifier {
  Blend? blend;
  bool isLoading = false;

  getData() async {
    isLoading = true;
    blend = (await getAllBlendData())!;
    isLoading = false;

    notifyListeners();
    // blend = await BlendRemoteService().getBlends();

    // if (blend != null) {
    //   var notify = isLoading = true;
    // }
  }
}
