import 'package:fitness_app/ui/home/homepage.dart';
import 'package:flutter/material.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'FitnessApp',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Homepage(),

    );
  }
}
