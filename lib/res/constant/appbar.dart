import 'package:flutter/material.dart';
import 'package:fitness_app/res/constant/icon.dart';

class AppBarUtil {
  static PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0XFFF2F2F2),
      leading: IconConstants.arrowBackIcon,
      actions: [
        IconConstants.personOutlineIcon,
        IconConstants.shoppingBagIcon
      ],
    );
  }
}
