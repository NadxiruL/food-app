// ignore_for_file: prefer_const_constructors

import 'package:deligram/screens/cappucino_screen.dart';
import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  MenuTab({super.key});

  final List<Widget> tablist = <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Cappucino'),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Macchiato'),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Mocha Latte'),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Americano'),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Frappe'),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Iced Latte'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CappucinoScreen(name: 'Cappucino'),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          margin: EdgeInsets.only(top: 25),
          child: ListView.builder(
            itemCount: tablist.length,
            itemBuilder: (context, index) => tablist[index],
            scrollDirection: Axis.horizontal,
            // ignore: prefer_const_literals_to_create_immutables
          ),
        ),
      ),
    );
  }
}
