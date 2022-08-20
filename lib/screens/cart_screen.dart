import 'package:deligram/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final blendData = Provider.of<CartProvider>(context);
    return
        //Column(
        //   children: [
        //     Text(blendData.cartItem.name),
        //     // Text('Hello'),
        //   ],
        // );

        Container(
      child: ListView.builder(
        itemCount: blendData.cartItem?.length,
        itemBuilder: (context, index) {
          return ListTile(
            // leading: Text('Hello'),
            title: Text(blendData.cartItem![index].name ?? 'NONE'),
            // title: Text('Cart Screen'),
          );
        },
      ),
    );
  }
}
