import 'package:flutter/material.dart';

class CoffeeList extends StatelessWidget {
  final String menutype;
  const CoffeeList({Key? key, required this.menutype}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50,
      ),
      child: Text(
        menutype,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
    );
  }
}
