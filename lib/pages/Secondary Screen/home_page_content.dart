import 'package:flutter/material.dart';
import '../../widgets/cards/user_card.dart';
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
          avatarPath: 'assets/icons/avatar1.png',
        ),
        UserCard(
          name: 'Anil Shrestha',
          address: 'Baneshwor 45701 - Koteshwor',
          pickup: 'SuperMart',
          destination: 'Koteshwor - 45701',
          avatarPath: 'assets/icons/avatar2.png',
        ),
        UserCard(
          name: 'Sita Rai',
          address: 'Maitidevi 45702 - Dillibazar',
          pickup: 'Fresh Veggie Store',
          destination: 'Dillibazar - 45702',
          avatarPath: 'assets/icons/avatar3.png',
        ),
      ],
    );
  }
}