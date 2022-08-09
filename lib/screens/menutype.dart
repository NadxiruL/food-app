// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuType extends StatelessWidget {
  const MenuType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              'Coffee',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            child: Text(
              'Bread',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            child: Text(
              'Side Dish',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
