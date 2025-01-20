import 'package:flutter/material.dart';
import '../../../Themes/app_color.dart';

class LicenseUploadWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const LicenseUploadWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFDCEDC8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.cloud_upload,
              color: AppColors.primary,
              size: 40,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Color(0xFF757575)),
          ),
        ],
      ),
    );
  }
}
