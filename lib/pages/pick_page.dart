import 'package:flutter/material.dart';

class PickPage extends StatelessWidget {
  final List<Map<String, String>> deliveries = [
    {
      'name': 'Tilak Bista',
      'address': 'Sankhamoul 45700 - Buddhanagar',
      'estimate': '20 min',
    },
    {
      'name': 'Tilak Bista',
      'address': 'Baneshwor 45700 - Koteshwor',
      'estimate': '25 min',
    },
    {
      'name': 'Tilak Bista',
      'address': 'Maitidevi 45700 - Dillibazar',
      'estimate': '30 min',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF005400),
        title: const Text('Pick', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: deliveries.length,
        itemBuilder: (context, index) {
          final delivery = deliveries[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/avatar1.png'),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              delivery['name']!,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              delivery['address']!,
                              style: const TextStyle(color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.call, color: Color(0xFF005400)),
                      const SizedBox(width: 10),
                      const Icon(Icons.visibility, color: Color(0xFF005400)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Color(0xFF005400), size: 16),
                            SizedBox(width: 5),
                            Text('Confirmed', style: TextStyle(color: Color(0xFF005400), fontSize: 12)),
                          ],
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            Icon(Icons.store, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text('Picking Items', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            Icon(Icons.delivery_dining, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text('Out for delivery', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            Icon(Icons.check_circle_outline, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text('Delivered', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('Estimate Time ${delivery['estimate']}', style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceholderWidget('Search')));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF005400),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: const Text('View Map', style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final String text;
  const PlaceholderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}