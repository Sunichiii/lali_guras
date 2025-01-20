import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/navigation_provider.dart';
import '../../../widgets/custom_widgets/custom_app_bar.dart';
import '../../../widgets/custom_widgets/custom_nav_bar.dart';
import '../../Secondary Screen/home_page_content.dart';
import 'pick_page.dart';
import 'profile_page.dart';
import '../../Secondary Screen/profile_setup_page.dart';
import 'search_page.dart';


class DriverHomePage extends StatelessWidget {
  final List<Widget> _pages = [
    HomePageContent(),
    PickPage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, provider, child) {
        return SafeArea(
          child: Scaffold(
            appBar: provider.currentIndex == 0
                ? CustomAppBar(
              title: "Gausala, KTM",
              showWarningIcon: true,
              onSetupTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetupProfilePage()),
                );
              },
            )
                : null, // AppBar only for the first page
            body: _pages[provider.currentIndex],
            bottomNavigationBar: CustomBottomNavBar(
              currentIndex: provider.currentIndex,
              onTap: provider.updateIndex,
            ),
          ),
        );
      },
    );
  }
}
