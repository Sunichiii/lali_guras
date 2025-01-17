import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String address;
  final String pickup;
  final String destination;
  final String avatarPath;

  UserCard({
    required this.name,
    required this.address,
    required this.pickup,
    required this.destination,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(avatarPath),
                  radius: 25,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF212121))),
                    Text(address, style: const TextStyle(color: Color(0xFF757575))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text('Pickup Point: $pickup', style: TextStyle(color: Color(0xFF212121))),
            Text('Destination Point: $destination', style: TextStyle(color: Color(0xFF757575))),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF388E3C), // Button color
                ),
                onPressed: () {},
                child: Text('Pick', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
