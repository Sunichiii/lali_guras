import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData lightMode = ThemeData(
  fontFamily: "Poppins",
  colorScheme: const ColorScheme.light(
    surface: AppColors.background,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Body text
    bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal), // Smaller body text
    titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),  // Large titles
    titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal), // Medium titles
  ),

);