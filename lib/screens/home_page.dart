// ignore_for_file: prefer_const_constructors

import 'package:deligram/models/blend_provider.dart';
import 'package:deligram/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'products_overview_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    ProductsOverView(),
    CartScreen(),
    // Icon(
    //     // 'Cart',
    //     // style: optionStyle,
    //     Icons.shopping_cart,
    //     size: 50),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final blend = Provider.of<BlendProvider>(context);

    var platform = Theme.of(context).platform;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
            child: Text(platform == TargetPlatform.android
                ? 'KEDAI KOPI'
                : 'KOPI KEDAI')),
      ),
      body: Center(
        child: _widgetOptions.elementAt(blend.selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: blend.selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: blend.onItemTapFunc,
      ),
    );
  }
}
