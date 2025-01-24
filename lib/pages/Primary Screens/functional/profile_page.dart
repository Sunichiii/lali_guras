import 'package:driver_part/widgets/buttons/secondary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Themes/app_color.dart';
import '../../../providers/profile_provider.dart';
import '../../../widgets/custom_widgets/profile_details_widget.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileDetails = context.watch<ProfileProvider>().profileDetails;

    return Scaffold(
      appBar: SecondaryAppBar(title: "Profile"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/icons/avatar1.png'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Pujan Khanal',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Driver',
                    style: TextStyle(fontSize: 16, color: Color(0xFF757575)),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      // Edit Profile functionality
                    },
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          ...profileDetails.map((details) => ProfileDetailsWidget(details: details)).toList(),
        ],
      ),
    );
  }
}
