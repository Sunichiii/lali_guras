import 'package:flutter/material.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/icons/watching.png"),
        const SizedBox(height: 20,),
        Text(
          "Earn More Daily",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 10,),
        Text(
          "Start delivering orders and boost \n your income every single day.",
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
