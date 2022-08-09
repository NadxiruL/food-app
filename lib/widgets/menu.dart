import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        print('something');
      },
      icon: const Icon(Icons.menu),
    );
  }
}
