import 'package:flutter/material.dart';

import '../datas/models/customer_model.dart';

class CustomerProvider with ChangeNotifier {
  final List<Customer> _customers = [
    Customer(
      customerAddress: 'Sankhamul',
      shopName: 'Aadarsha Tarkari Pasal',
      destination: 'Buddhanagar-45700',
      avatar: 'https://via.placeholder.com/150/0000FF/808080?Text=Customer1',
    ),
    Customer(
      customerAddress: 'Baneshwor',
      shopName: 'City Mart',
      destination: 'Koteshwor-12345',
      avatar: 'https://via.placeholder.com/150/FF0000/FFFFFF?Text=Customer2',
    ),
    Customer(
      customerAddress: 'Kalanki',
      shopName: 'Kalanki Grocery',
      destination: 'Balkhu-56789',
      avatar: 'https://via.placeholder.com/150/00FF00/000000?Text=Customer3',
    ),
  ];

  List<Customer> get customers => _customers;
}
