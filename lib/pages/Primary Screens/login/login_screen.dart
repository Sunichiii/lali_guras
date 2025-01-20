import 'package:driver_part/Themes/app_color.dart';
import 'package:flutter/material.dart';

import '../functional/driver_home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Center(
                child: Image.asset(
                  "assets/email_components/mobile.png",
                  height: 150,
                ),
              ),
              const SizedBox(height: 24),
              Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
              const SizedBox(height: 24),
              Text(
                "Login",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Email Input Field
              _buildInputField(
                context,
                hintText: "Email",
                icon: Image.asset("assets/email_components/email.png"),
              ),
              const SizedBox(height: 10),

              // Password Input Field
              _buildInputField(
                context,
                hintText: "Password",
                icon: Image.asset("assets/email_components/password.png"),
                obscureText: true,
              ),
              const SizedBox(height: 16),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Forgot Password Logic
                  },
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.primary),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Continue Button
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  DriverHomePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Method for Input Fields
  Widget _buildInputField(
      BuildContext context, {
        required String hintText,
        required Widget icon, // Accept any widget, including Image.asset
        bool obscureText = false,
      }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.grey[600],
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0), // Add padding to align image
          child: icon,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
