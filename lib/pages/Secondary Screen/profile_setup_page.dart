import 'package:driver_part/widgets/custom_widgets/profile_setup_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Themes/app_color.dart';
import '../../providers/profile_setup_provider.dart';
import '../../widgets/custom_widgets/liscence_upload_widget.dart';


class SetupProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProfileSetupProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Setup Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Handle image upload
                      },
                      child: const Text(
                        'Choose Image',
                        style: TextStyle(color: AppColors.primary),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Verify License Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Verify License',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LicenseUploadWidget(
                          label: 'Front View',
                          onTap: () {
                            // Handle front view upload
                          },
                        ),
                        LicenseUploadWidget(
                          label: 'Back View',
                          onTap: () {
                            // Handle back view upload
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Details Section
              const Text(
                'Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ProfileSetupTextFieldWidget(
                icon: Icons.email,
                hintText: 'Email',
                onChanged: provider.updateEmail,
              ),
              ProfileSetupTextFieldWidget(
                icon: Icons.person,
                hintText: 'Full Name',
                onChanged: provider.updateFullName,
              ),
              ProfileSetupTextFieldWidget(
                icon: Icons.phone,
                hintText: 'Mobile',
                onChanged: provider.updateMobile,
              ),
              ProfileSetupTextFieldWidget(
                icon: Icons.lock,
                hintText: 'Previous Password',
                obscureText: true,
                onChanged: provider.updatePreviousPassword,
              ),
              ProfileSetupTextFieldWidget(
                icon: Icons.lock,
                hintText: 'New Password',
                obscureText: true,
                onChanged: provider.updateNewPassword,
              ),

              const SizedBox(height: 20),

              // Save Button
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: provider.saveProfile,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
}
