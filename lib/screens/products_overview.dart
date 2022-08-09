// ignore_for_file: prefer_const_constructors

import 'package:deligram/screens/menutype.dart';
import 'package:deligram/widgets/search.dart';
import 'package:flutter/material.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Search(),
        MenuType(),
      ],
    );
  }
}
