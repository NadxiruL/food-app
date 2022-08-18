import 'package:deligram/models/blend_provider.dart';
import 'package:flutter/material.dart';
import '../models/blend.dart';
import '../widgets/menu_list.dart';
import '../widgets/menu_tab.dart';
import 'package:provider/provider.dart';

class ProductsOverView extends StatefulWidget {
  ProductsOverView({super.key});

  @override
  State<ProductsOverView> createState() => _ProductsOverViewState();
}

class _ProductsOverViewState extends State<ProductsOverView> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Blend> blend = [];
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
              onChanged: (value) {
                // blends.searchText = value;
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

        //Search Result//

        // ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: blend.length,
        //   itemBuilder: (context, i) {
        //     List<Blend> blend = [];
        //     return ListTile(
        //       leading: Image.network(
        //         blend[i].product.featuredImage,
        //         fit: BoxFit.cover,
        //         width: 50,
        //         height: 50,
        //       ),
        //       title: Text(blend[i].product.name),
        //     );
        //   },
        // ),

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
