import 'package:flutter/material.dart';
// Placeholder Widgets
class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Onboarding Screen"));
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Welcome Screen"));
  }
}

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Started Screen"));
  }
}
