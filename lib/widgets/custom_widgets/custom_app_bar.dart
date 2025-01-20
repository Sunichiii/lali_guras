import 'package:flutter/material.dart';
import '../../Themes/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showWarningIcon;
  final VoidCallback onSetupTap;
  final bool showBackButton;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showWarningIcon = false,
    required this.onSetupTap,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      leading: showBackButton
          ? IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )
          : null,
      title: Row(
        children: [
          const Icon(
            Icons.two_wheeler, // Scooter icon
            color: Colors.black, // Icon color
            size: 18, // Icon size
          ),
          const SizedBox(width: 3), // Space between icon and text
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18, // Adjust text size as needed
            ),
          ),
        ],
      ),
      actions: [
        if (showWarningIcon)
          Container(
            margin: const EdgeInsets.only(right: 2),
            child: Image.asset(
              'assets/icons/warn_you.png',
              width: 18,
              height: 18,
            ),
          ),
        const SizedBox(width: 1),
        GestureDetector(
          onTap: onSetupTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Setup me first',
              style: TextStyle(
                color: AppColors.background,
                fontSize: 9, // Text size
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.person,
            color: AppColors.primary,
          ),
          onPressed: onSetupTap,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0), // Line height
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Space on both sides
          child: Container(
            color: Colors.grey[300], // Line color
            height: 1.0, // Line thickness
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0 + 1.0); // AppBar height + line
}
