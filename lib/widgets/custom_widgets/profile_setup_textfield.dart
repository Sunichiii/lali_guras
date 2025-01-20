import 'package:flutter/material.dart';
import '../../../Themes/app_color.dart';

class ProfileSetupTextFieldWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool enabled;
  final bool obscureText;
  final ValueChanged<String>? onChanged;

  const ProfileSetupTextFieldWidget({
    Key? key,
    required this.icon,
    required this.hintText,
    this.enabled = true,
    this.obscureText = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        enabled: enabled,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: AppColors.primary),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF757575)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary, width: 1),
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
      ),
    );
  }
}
