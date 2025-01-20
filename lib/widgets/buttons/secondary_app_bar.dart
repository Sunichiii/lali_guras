import 'package:flutter/material.dart';

class SecondaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackButtonPressed;

  const SecondaryAppBar({
    Key? key,
    required this.title,
    this.onBackButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, // Removes shadow
      leading: IconButton(
        onPressed: onBackButtonPressed ?? () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_new, // iOS-style back arrow
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1), // Height of the gray line
        child: Container(
          height: 1,
          color: Colors.grey[300], // Thin gray line
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(57); // AppBar height + gray line
}
