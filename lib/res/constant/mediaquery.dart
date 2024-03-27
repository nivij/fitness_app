import 'package:flutter/material.dart';

import '../../main.dart';

class Constants {
  static const double screenWidth = 375.0; // Example value, replace with your desired width
  static const double screenHeight = 812.0; // Example value, replace with your desired height

  static double get screenWidthMultiplier {
    return MediaQuery.of(navigatorKey.currentContext!).size.width / screenWidth;
  }

  static double get screenHeightMultiplier {
    return MediaQuery.of(navigatorKey.currentContext!).size.height / screenHeight;
  }
}
