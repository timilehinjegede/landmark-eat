import 'package:flutter/material.dart';
import 'package:landmarkeat/screens/history.dart';
import 'package:landmarkeat/screens/home.dart';
import 'package:landmarkeat/screens/onboarding.dart';
import 'package:landmarkeat/screens/order.dart';
import 'package:landmarkeat/screens/restaurant.dart';
import 'package:landmarkeat/screens/successful.dart';
import 'package:landmarkeat/screens/ticket_s.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home' : (context) => HomeScreen(),
        '/restaurant' : (context) => RestaurantScreen(),
        '/order' : (context) => OrderScreen(),
        '/history' : (context) => HistoryScreen(),
        '/ticket' : (context) => TicketScreen(),
        '/success' : (context) => SuccessfulScreen(),
      },
      home: Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
