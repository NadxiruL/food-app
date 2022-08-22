// ignore_for_file: prefer_const_constructors

import 'package:deligram/models/blend_provider.dart';
import 'package:deligram/screens/cart_screen.dart';
import 'package:deligram/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'products_overview_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    ProductsOverView(),
    CartScreen(),
    Text(
      'Payment Gateway',
      style: optionStyle,
    ),
    ProfileScreen(),
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
            child: Text(
          platform == TargetPlatform.android ? 'KOPI' : 'KOPI KEDAI',
          style: GoogleFonts.bebasNeue(fontSize: 30),
        )),
      ),
      body: Center(
        child: _widgetOptions.elementAt(blend.selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 4,
        // backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
            ),
            label: 'Payment Gateway',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: blend.selectedIndex,
        selectedItemColor: Colors.black45,
        onTap: blend.onItemTapFunc,
      ),
    );
  }
}
