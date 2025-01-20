import 'package:driver_part/Themes/light_theme.dart';
import 'package:driver_part/pages/Primary%20Screens/splash/splash_screen.dart';
import 'package:driver_part/providers/login_provider.dart';
import 'package:driver_part/providers/pick_provider.dart';
import 'package:driver_part/providers/profile_provider.dart';
import 'package:driver_part/providers/profile_setup_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/navigation_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => PickProvider()),
        ChangeNotifierProvider(create: (_) => ProfileSetupProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightMode,
       // home: DriverHomePage(),
        home: SplashScreen(),
      ),
    );
  }
}