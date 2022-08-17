import 'package:flutter/material.dart';
import '../widgets/menu_list.dart';
import '../widgets/menu_tab.dart';

class ProductsOverView extends StatelessWidget {
  const ProductsOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
