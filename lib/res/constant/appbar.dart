import 'package:flutter/material.dart';
import 'package:fitness_app/res/constant/icon.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';

import 'mediaquery.dart';

class AppBarUtil {
  static PreferredSizeWidget buildAppBar(BuildContext context, Color appBarColor) {
    return AppBar(
      toolbarHeight: 60,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30 * Constants.screenWidthMultiplier),
        child: Container(),
      ),      backgroundColor: appBarColor, // Set the AppBar color dynamically
      leadingWidth: 80 * Constants.screenWidthMultiplier,
      leading: Bounceable(
        onTap: () => Get.back(),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconConstants.arrowBackIcon,
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
          child: IconConstants.shoppingBagIcon,
        ),
        CircleAvatar(
          radius: 40, // Adjust the radius as needed
          backgroundColor: Colors.transparent, // Ensure the circle's background is transparent
          child: ClipOval(
            child: ImageConstants.backgroundImage,
          ),
        ),
      ],


    );
  }
}