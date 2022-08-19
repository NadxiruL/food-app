import 'package:deligram/models/blend_provider.dart';
import 'package:flutter/material.dart';

import '../widgets/menu_list.dart';
import '../widgets/menu_tab.dart';
import 'package:provider/provider.dart';

class ProductsOverView extends StatefulWidget {
  ProductsOverView({super.key});

  @override
  State<ProductsOverView> createState() => _ProductsOverViewState();
}

class _ProductsOverViewState extends State<ProductsOverView> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final blendData = Provider.of<BlendProvider>(context);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            // color: Colors.amber,
            child: TextField(
              autofocus: false,
              onChanged: (value) {
                blendData.searchText = value;
                blendData.searchProduct(value);
              },
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Search..',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black26,
            ),
            height: 100,
            child: MenuTab(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black26,
            ),
            height: 250,
            child: MenuList(),
          ),
        ),
      ],
    );
  }
}
