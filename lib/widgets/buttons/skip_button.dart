import 'package:flutter/material.dart';
import '../../pages/Primary Screens/login/login_screen.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton.icon(
          label: const Text('Skip',
              style: TextStyle(color: Colors.black)),
          icon: const Icon(Icons.skip_next,
              color: Color.fromARGB(255, 100, 94, 94)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ],
    );
  }
}
