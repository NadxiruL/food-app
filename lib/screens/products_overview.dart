// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/coffeelist.dart';

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
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
        ),

        //List of coffee tab //

        Container(
          margin: EdgeInsets.only(top: 10),
          height: 50,
          color: Colors.black12,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  CoffeeList(menutype: 'Breakfast'),
                  CoffeeList(menutype: 'Lunch'),
                  CoffeeList(menutype: 'Supper')
                ],
              ),
            ],
          ),
        ),

        //Menu List //

        Container(
          margin: EdgeInsets.only(top: 25),
          color: Colors.orange,
          height: 50,
        )
      ],
    );
  }
}
