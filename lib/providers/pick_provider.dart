import 'package:flutter/material.dart';
import '../models/pick_delivery_details.dart';

class PickProvider extends ChangeNotifier {
  final List<Delivery> _deliveries = [
    Delivery(
      name: 'Tilak Bista',
      address: 'Sankhamoul 45700 - Buddhanagar',
      estimate: '20 min',
    ),
    Delivery(
      name: 'Tilak Bista',
      address: 'Baneshwor 45700 - Koteshwor',
      estimate: '25 min',
    ),
    Delivery(
      name: 'Tilak Bista',
      address: 'Maitidevi 45700 - Dillibazar',
      estimate: '30 min',
    ),
  ];

  List<Delivery> get deliveries => _deliveries;
}
