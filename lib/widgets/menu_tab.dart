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
            children: [
              Text(
                'Bread',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Bread',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Bread',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Bread',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Bread',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Bread',
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
