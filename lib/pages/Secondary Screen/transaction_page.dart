
import 'package:flutter/material.dart';
import '../../Themes/app_color.dart';
import '../Primary Screens/functional/driver_home_page.dart';
import '../Primary Screens/functional/pick_page.dart';
import '../Primary Screens/functional/profile_page.dart';
import '../Primary Screens/functional/search_page.dart';


class TransactionPage extends StatelessWidget {
  final double shippingProgress = 0.75; // Example progress for shipping (75%)
  final double codProgress = 0.95; // Example progress for COD (95%)
  final double totalRideProgress = 0.6; // Example progress for Total Ride (60%)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton.icon(
                  onPressed: () {
                    // Add filter functionality here
                  },
                  icon: Icon(Icons.filter_list, color: Colors.black),
                  label: Text("Filters", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.5,
                children: [
                  _buildProgressCard(
                    title: 'Shipping',
                    progress: shippingProgress,
                    value: 'Rs 1500',
                  ),
                  _buildProgressCard(
                    title: 'COD',
                    progress: codProgress,
                    value: 'Rs 5700',
                  ),
                  _buildProgressCard(
                    title: 'Total Ride',
                    progress: totalRideProgress,
                    value: '2h 30m',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // Default index of TransactionPage
        onTap: (index) {
          // Navigate to the corresponding page
          switch (index) {
            case 0:
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => DriverHomePage()),
                    (route) => false, // Clear navigation stack
              );
              break;
            case 1:
            // Stay on TransactionPage
              break;
            case 2:
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
                    (route) => false, // Clear navigation stack
              );
              break;
            case 3:
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
                    (route) => false, // Clear navigation stack
              );
              break;
            case 4:
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => PickPage()),
                    (route) => false, // Clear navigation stack
              );
              break;
          }
        },
        selectedItemColor: AppColors.primary,
        unselectedItemColor: const Color(0xFF757575),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_shipping_outlined), label: 'Pick'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildProgressCard(
      {required String title, required double progress, required String value}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFDCEDC8), // Light green background
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedProgressIndicator(progress: progress),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 20, // Increased font size for the value
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedProgressIndicator extends StatefulWidget {
  final double progress;

  const AnimatedProgressIndicator({Key? key, required this.progress}) : super(key: key);

  @override
  _AnimatedProgressIndicatorState createState() => _AnimatedProgressIndicatorState();
}

class _AnimatedProgressIndicatorState extends State<AnimatedProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: widget.progress).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ))
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // Increased size for circular progress bar
      width: 60, // Increased size for circular progress bar
      child: CircularProgressIndicator(
        value: _animation.value,
        backgroundColor: Colors.grey.shade300,
        color: AppColors.primary,
        strokeWidth: 10, // Made the circular progress bar fatter
      ),
    );
  }
}
