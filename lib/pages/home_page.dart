import 'package:driver_part/pages/pick_page.dart';
import 'package:driver_part/pages/profile_page.dart';
import 'package:driver_part/pages/profile_setup_page.dart';
import 'package:driver_part/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/navigation_provider.dart';
import '../widgets/user_card.dart';

class HomePage extends StatelessWidget {
  final List<Widget> _pages = [
    HomePageContent(),
    PickPage(),
    SearchPage(),
    ProfilePage(),
    PlaceholderWidget('Package Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: provider.currentIndex == 0 // Show app bar only on the home page
              ? AppBar(
            backgroundColor: const Color(0xFF005400),
            title: const Text('Gausala, KTM', style: TextStyle(color: Colors.white)),
            actions: [
              IconButton(
                icon: const Icon(Icons.warning_rounded, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person_add, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SetupProfilePage()),
                  );
                },
              ),
            ],
          )
              : null, // Remove app bar for other screens
          body: _pages[provider.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.currentIndex,
            onTap: provider.updateIndex,
            selectedItemColor: const Color(0xFF005400),
            unselectedItemColor: const Color(0xFF757575),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.fire_truck_sharp), label: 'Pick'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Package'),
            ],
          ),
        );
      },
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        UserCard(
          name: 'Tilak Bista',
          address: 'Sankhamoul 45700 - Buddhanagar',
          pickup: 'Adarsha Tarkari Pasal',
          destination: 'Buddhanagar - 45700',
          avatarPath: 'assets/avatar1.png',
        ),
        UserCard(
          name: 'Anil Shrestha',
          address: 'Baneshwor 45701 - Koteshwor',
          pickup: 'SuperMart',
          destination: 'Koteshwor - 45701',
          avatarPath: 'assets/avatar2.png',
        ),
        UserCard(
          name: 'Sita Rai',
          address: 'Maitidevi 45702 - Dillibazar',
          pickup: 'Fresh Veggie Store',
          destination: 'Dillibazar - 45702',
          avatarPath: 'assets/avatar3.png',
        ),
      ],
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final String text;

  const PlaceholderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
