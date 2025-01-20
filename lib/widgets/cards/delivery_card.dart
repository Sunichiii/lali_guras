import 'package:flutter/material.dart';
import '../../../Themes/app_color.dart';
import '../../models/pick_delivery_details.dart';
import '../../pages/Primary Screens/functional/search_page.dart';

class DeliveryCard extends StatelessWidget {
  final Delivery delivery;

  const DeliveryCard({Key? key, required this.delivery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/icons/avatar1.png'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        delivery.name,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        delivery.address,
                        style: const TextStyle(color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.visibility_outlined, color: AppColors.primary),
                const SizedBox(width: 10),
                const Icon(Icons.call_outlined, color: AppColors.primary),
              ],
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: AppColors.primary, size: 16),
                      SizedBox(width: 5),
                      Text('Confirmed', style: TextStyle(color: AppColors.primary, fontSize: 12)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.store, color: Colors.grey, size: 16),
                      SizedBox(width: 5),
                      Text('Picking Items', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.delivery_dining, color: Colors.grey, size: 16),
                      SizedBox(width: 5),
                      Text('Out for delivery', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, color: Colors.grey, size: 16),
                      SizedBox(width: 5),
                      Text('Delivered', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text('Estimate Time ${delivery.estimate}', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'View Map',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      "assets/icons/Sent.png",
                      height: 14,
                      width: 14,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error, color: Colors.white, size: 16);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
