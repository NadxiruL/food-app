import 'package:deligram/models/blend_provider.dart';
import 'package:flutter/material.dart';
import '../widgets/search_product.dart';
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
    final blendData = Provider.of<BlendProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              // color: Colors.amber,
              child:
                  SearchProduct(blendData: blendData, controller: controller),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 1.0,
                //   ),
                // ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.black45,
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
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 1.0,
                //   ),
                // ],
                // boxShadow: BoxShadow(),
                borderRadius: BorderRadius.circular(15),
                // color: Colors.black87,
              ),
              height: 300,
              child: MenuList(),
            ),
          ),
        ],
      ),
    );
  }
}
