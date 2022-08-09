// ignore_for_file: prefer_const_constructors

import 'package:deligram/screens/products_overview.dart';
import 'package:flutter/material.dart';
import '../widgets/menu.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 95),
          child: Text('Deligram'),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Menu(),
      ),
      body: ProductsOverviewScreen(),
    );
  }
}
