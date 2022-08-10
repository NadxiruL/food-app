// ignore_for_file: prefer_const_constructors

import 'package:deligram/widgets/menu_list.dart';
import 'package:flutter/material.dart';

import '../widgets/coffee_list.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search box //

        Container(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Find you favorite foods..',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.blue),
              // ),
            ),
          ),
        ),

        //List of coffee tab //

        Container(
          margin: EdgeInsets.all(8),
          height: 50,
          color: Colors.black12,
          child: SingleChildScrollView(
            child: Row(children: [
              CoffeeList(menutype: 'Breakfast'),
              CoffeeList(menutype: 'Lunch'),
              CoffeeList(menutype: 'Supper'),
              CoffeeList(menutype: 'Supper'),
              CoffeeList(menutype: 'Supper')
            ]),
            scrollDirection: Axis.horizontal,
          ),
        ),

        SizedBox(
          height: 10,
        ),

        //Menu List //
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MenuList(),
              MenuList(),
              MenuList(),
            ],
          ),
        ),
      ],
    );
  }
}
