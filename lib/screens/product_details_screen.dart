import '../models/blend.dart';
import '../models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  DetailsScreen(
      {super.key, required this.productName, required this.productImage});
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Blend? _blends;

    final cartData = Provider.of<CartProvider>(context);
    // final blendData = Provider.of<Blend>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(productName),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                productImage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black45,
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 1.0,
                //   ),
                // ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productName),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),

                      // color: Colors.amberAccent[400]
                    ),
                    child: IconButton(
                        // alignment: Alignment.centerRight,
                        onPressed: () {
                          cartData.addtoCart(_blends?.product.name ?? '');

                          final snackBar = SnackBar(
                            content: Text('added to cart'),
                            duration: Duration(milliseconds: 1000),
                            action: SnackBarAction(
                              label: 'close',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        icon: Icon(Icons.add_shopping_cart)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
