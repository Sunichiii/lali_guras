import 'package:flutter/material.dart';

import '../models/profile_setup.dart';

class ProfileSetupProvider extends ChangeNotifier {
  ProfileSetup _profileSetup = ProfileSetup(
    email: '',
    fullName: '',
    mobile: '',
    previousPassword: '',
    newPassword: '',
  );

  ProfileSetup get profileSetup => _profileSetup;

  void updateEmail(String email) {
    _profileSetup.email = email;
    notifyListeners();
  }

  void updateFullName(String name) {
    _profileSetup.fullName = name;
    notifyListeners();
  }

  void updateMobile(String mobile) {
    _profileSetup.mobile = mobile;
    notifyListeners();
  }

  void updatePreviousPassword(String password) {
    _profileSetup.previousPassword = password;
    notifyListeners();
  }

  void updateNewPassword(String password) {
    _profileSetup.newPassword = password;
    notifyListeners();
  }

  void saveProfile() {
    // Handle saving logic, e.g., API call
    notifyListeners();
  }
}
