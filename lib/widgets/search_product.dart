import 'package:flutter/material.dart';

import '../models/blend_provider.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({
    super.key,
    required this.blendData,
    required this.controller,
  });

  final BlendProvider blendData;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      onChanged: (value) {
        blendData.searchText = value;
        blendData.searchProduct(value);
      },
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Search..',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
