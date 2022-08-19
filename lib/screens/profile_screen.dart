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
            TextButton(onPressed: () {}, child: Text('Rewards')),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Subscription')),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Challenges')),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Referrals')),
            Divider(color: Colors.white),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'My Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Rewards member')),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Scheduled')),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Saved places')),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Business account')),
            Divider(color: Colors.white),
            TextButton(onPressed: () {}, child: Text('Settings')),
          ],
        ),
      ],
    );
  }
}
