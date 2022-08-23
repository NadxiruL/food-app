import 'package:deligram/models/cappucino.dart';
import 'package:flutter/material.dart';

import '../models/cappucino.dart';

class CappucinoScreen extends StatelessWidget {
  final String name;
  const CappucinoScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // List<Cappucino> cappucino;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(name),
      ),
      body: GridView.builder(
        itemCount: cappucino.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridTile(
            child: Image.network(
              cappucino[index].image,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                cappucino[index].name,
              )),
              subtitle: Center(
                  heightFactor: 2,
                  child: Text(
                    'RM${(cappucino[index].price.toStringAsFixed(2))}',
                    style: TextStyle(fontSize: 15),
                  )),
            ),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
