import 'package:flutter/material.dart';
import '../models/profile_details.dart';
import '../pages/Primary Screens/login/login_screen.dart';
import '../pages/Secondary Screen/profile_setup_page.dart';
import '../pages/Secondary Screen/transaction_page.dart';

class ProfileProvider extends ChangeNotifier {
  List<ProfileDetails> get profileDetails {
    return [
      ProfileDetails(
        icon: Icons.dashboard,
        title: 'Dashboard',
        onTap: (BuildContext context) {
          // Dashboard functionality
        },
      ),
      ProfileDetails(
        icon: Icons.lock,
        title: 'Transaction',
        onTap: (BuildContext context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionPage()),
          );
        },
      ),
      ProfileDetails(
        icon: Icons.settings,
        title: 'Settings',
        onTap: (BuildContext context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SetupProfilePage()),
          );
        },
      ),
      ProfileDetails(
        icon: Icons.logout,
        title: 'Log-out',
        onTap: (BuildContext context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
    ];
  }
}
