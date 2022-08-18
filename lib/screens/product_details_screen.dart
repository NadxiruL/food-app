import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  const DetailsScreen(
      {super.key, required this.productName, required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(productName),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amberAccent[400]),
                  child: IconButton(
                      // alignment: Alignment.centerRight,
                      onPressed: () {
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
          ],
        ),
      ),
    );
  }
}
