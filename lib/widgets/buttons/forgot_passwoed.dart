import 'package:flutter/material.dart';
import '../../Themes/app_color.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback onPressed;
  final TextStyle? textStyle;

  const ForgotPasswordButton({
    Key? key,
    required this.onPressed,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            'Forgot Password?',
            style: textStyle ?? TextStyle(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
