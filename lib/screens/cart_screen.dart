import 'package:deligram/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = Provider.of<CartProvider>(context);
    return
        //Column(
        //   children: [
        //     Text(blendData.cartItem.name),
        //     // Text('Hello'),
        //   ],
        // );

        Container(
      child: ListView.builder(
        itemCount: _cart.cartItem?.length,
        itemBuilder: (context, index) {
          return ListTile(
            // leading: Text('Hello'),
            // title: Text(_cart.cartItem![index].name ?? 'NONE'),
            title: Text('DATA DAH MASUK TAPI TAK APPEAR'),
            // title: Text('Cart Screen'),
          );
        },
      ),
    );
  }
}
