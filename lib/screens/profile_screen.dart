import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Picture here'),
                  Text('Name here'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.white,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Rewards',
                  style: TextStyle(color: Colors.white),
                )),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Subscription',
                  style: TextStyle(color: Colors.white),
                )),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child:
                    Text('Challenges', style: TextStyle(color: Colors.white))),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child:
                    Text('Referrals', style: TextStyle(color: Colors.white))),
            Divider(color: Colors.black),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'My Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child: Text('Rewards member',
                    style: TextStyle(color: Colors.white))),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child:
                    Text('Scheduled', style: TextStyle(color: Colors.white))),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child: Text('Saved places',
                    style: TextStyle(color: Colors.white))),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child: Text('Business account',
                    style: TextStyle(color: Colors.white))),
            Divider(color: Colors.black),
            TextButton(
                onPressed: () {},
                child: Text('Settings', style: TextStyle(color: Colors.white))),
          ],
        ),
      ],
    );
  }
}
