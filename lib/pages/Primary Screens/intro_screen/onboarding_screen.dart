import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Image.asset("assets/icons/ride.png"),
      const SizedBox(
        height: 20,
      ),
      Text(
        "Create Your Profile",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        "Complete your profile to help you find by \n Delivery boy who will be right for you.",
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
