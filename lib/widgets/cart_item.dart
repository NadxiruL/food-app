import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String name;
  const CartItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name),
    );

    // Card(
    //   margin: EdgeInsets.symmetric(
    //     horizontal: 15,
    //     vertical: 10,
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: FittedBox(
    //       child: Text(name),
    //     ),
    //   ),
    // );
  }
}
