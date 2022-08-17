// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('something!');
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          margin: EdgeInsets.only(top: 25),
          child: ListView(
            scrollDirection: Axis.horizontal,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // DefaultTabController(
              //   length: 3,
              //   child: TabBarView(children: [
              //     Tab(icon: Icon(Icons.directions_car)),
              //     Tab(icon: Icon(Icons.directions_transit)),
              //     Tab(icon: Icon(Icons.directions_bike)),
              //   ]),
              // )

              Text(
                'Todo',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Todo',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Todo',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Todo',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Todo',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Todo',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
