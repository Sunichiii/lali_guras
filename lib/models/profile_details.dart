import 'package:flutter/material.dart';

class ProfileDetails {
  final IconData icon;
  final String title;
  final void Function(BuildContext) onTap;

  ProfileDetails({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}
