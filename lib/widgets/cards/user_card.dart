import 'package:flutter/material.dart';
import '../../Themes/app_color.dart'; // Ensure AppColors is imported

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
      margin: const EdgeInsets.symmetric(vertical: 8.0), // Reduced margin
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Reduced padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info Row
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(avatarPath),
                  radius: 22, // Reduced avatar size
                ),
                const SizedBox(width: 8), // Reduced spacing
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: const Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        address,
                        style: const TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 12, // Smaller text size
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xFF757575),
                ),
              ],
            ),
            const SizedBox(height: 12), // Reduced spacing
            // Pickup Point Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_drop_down_circle_sharp, color: AppColors.primary, size: 18), // Smaller icon
                const SizedBox(width: 6), // Reduced spacing
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pickup,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Pickup Point',
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '(100m)',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8), // Reduced spacing
            // Destination Point Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.location_on, color: AppColors.primary, size: 18), // Smaller icon
                const SizedBox(width: 6), // Reduced spacing
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Destination Point',
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '(500m)',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12), // Reduced spacing
            // Pick Button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20, // Reduced horizontal padding
                    vertical: 8, // Reduced vertical padding
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Pick',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
