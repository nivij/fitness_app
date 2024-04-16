import 'package:fitness_app/ui/home/homepage.dart';
import 'package:fitness_app/ui/splash/first.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: 'FitnessApp',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: first(),

    );
  }
}
