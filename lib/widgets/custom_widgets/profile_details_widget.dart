import 'package:flutter/material.dart';
import '../../../Themes/app_color.dart';
import '../../models/profile_details.dart';

class ProfileDetailsWidget extends StatelessWidget {
  final ProfileDetails details;

  const ProfileDetailsWidget({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => details.onTap(context), // Pass context for navigation
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Icon(details.icon, color: AppColors.primary),
            const SizedBox(width: 16),
            Text(
              details.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
