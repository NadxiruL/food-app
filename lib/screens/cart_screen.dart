import 'package:deligram/models/cart.dart';
import 'package:deligram/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = Provider.of<CartProvider>(context);
    return ListView.builder(
      itemCount: _cart.cartItem.length,
      itemBuilder: (context, index) =>
          CartItem(name: _cart.cartItem[index].name),
    );

    // ListView.builder(
    //   itemCount: _cart.cartItem.length,
    //   itemBuilder: (context, index) {
    //     return Column(
    //       //     child: ListTile(
    //       //   title: Text('Button cart clicked!'),
    //       //
    //       children: [
    //         ..._cart.cartItem
    //             .map((item) => ListTile(
    //                   title: Text(item.name.toString()),
    //                 ))
    //             .toList(),
    //       ],
    //     );
    //   },
    // );
  }
}
