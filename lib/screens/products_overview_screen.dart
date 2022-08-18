import 'package:deligram/models/blend_provider.dart';
import 'package:flutter/material.dart';
import '../models/blend.dart';
import '../widgets/menu_list.dart';
import '../widgets/menu_tab.dart';
import 'package:provider/provider.dart';

class ProductsOverView extends StatelessWidget {
  ProductsOverView({super.key});

  // List<Blend>? filteredProducts;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final blends = Provider.of<BlendProvider>(context);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            // color: Colors.amber,
            child: TextField(
              autofocus: false,
              onChanged: blends.searchProduct,
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

        //Search Result//

        ListView.builder(
          shrinkWrap: true,
          itemCount: blends.filteredProducts.length,
          itemBuilder: (context, i) {
            Blend bleng = Blend as Blend;
            return ListTile(
              leading: Image.network(
                bleng.product.featuredImage,
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
              title: Text(
                bleng.product.featuredImage,
              ),
            );
          },
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
