import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  final String customerAddress;
  final String shopName;
  final String destination;
  final String avatar;
  final VoidCallback onPick;

  const CustomerCard({
    Key? key,
    required this.customerAddress,
    required this.shopName,
    required this.destination,
    required this.avatar,
    required this.onPick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  radius: 25,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    customerAddress,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.store, color: Colors.green),
                const SizedBox(width: 5),
                Text(
                  shopName,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.flag, color: Colors.red),
                const SizedBox(width: 5),
                Text(
                  destination,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: onPick,
                child: const Text('Pick'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
