import 'package:flutter/material.dart';
import 'package:fluttericon/octicons_icons.dart';

class IconConstants {
  static const Icon arrowBackIcon = Icon(Icons.arrow_back_ios_new);
  static const Icon shoppingBagIcon = Icon(Octicons.calendar);
  static const Icon personOutlineIcon = Icon(Icons.person_outline_rounded);
}

class ImageConstants {
  static const ImageWidget backgroundImage = ImageWidget(image: AssetImage('assets/profile.jpeg'));
}
class ImageWidget extends StatelessWidget {
  final ImageProvider image;

  const ImageWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(image: image);
  }
}