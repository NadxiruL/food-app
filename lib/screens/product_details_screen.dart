import '../models/blend_provider.dart';
import '../models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  const DetailsScreen(
      {super.key, required this.productName, required this.productImage});

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<CartProvider>(context);
    final blendData = Provider.of<BlendProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(productImage),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12),
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
                          cartData.addtoCart;
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
