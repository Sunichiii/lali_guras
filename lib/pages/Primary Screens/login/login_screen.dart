import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../ApiServices/api_services.dart';
import '../../../Themes/app_color.dart';
import '../../../providers/login_provider.dart';
import '../functional/driver_home_page.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    // Synchronize controllers with provider data
    emailController.text = loginProvider.email;
    passwordController.text = loginProvider.password;

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
                  "assets/icons/logo.png",
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
                controller: emailController,
                hintText: "Email",
                icon: Image.asset("assets/email_components/email.png"),
                onChanged: (value) => loginProvider.setEmail(value),
              ),
              const SizedBox(height: 10),

              // Password Input Field
              _buildInputField(
                context,
                controller: passwordController,
                hintText: "Password",
                icon: Image.asset("assets/email_components/password.png"),
                obscureText: true,
                onChanged: (value) => loginProvider.setPassword(value),
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
                      if (loginProvider.validateCredentials()) {
                        LoginApiServices()
                            .login(
                          loginProvider.email,
                          loginProvider.password,
                        )
                            .then((value) {
                          if (value != null && value.success == true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DriverHomePage(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(value?.message ??
                                    "Invalid email or password."),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }).onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("An error occurred: ${error.toString()}"),
                              backgroundColor: Colors.red,
                            ),
                          );
                          print("Error: $error");
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please enter email and password."),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
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
        required TextEditingController controller,
        required String hintText,
        required Widget icon,
        bool obscureText = false,
        required Function(String) onChanged,
      }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.grey[600],
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
