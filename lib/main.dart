import 'package:bike_ride_sharing_app/Screen/On%20Boarding%20Screen.dart';
import 'package:bike_ride_sharing_app/Screen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bike-ride-sharing-app',
      home: OnBoarding()
    );
  }
}

