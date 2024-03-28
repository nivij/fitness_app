import 'package:flutter/material.dart';
import 'package:fitness_app/res/constant/icon.dart';

import 'mediaquery.dart';

class AppBarUtil {
  static PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0XFFF2F2F2),
      leadingWidth: 80 * Constants.screenWidthMultiplier,
      leading: CircleAvatar(

          child: IconConstants.arrowBackIcon),
      actions: [
        CircleAvatar(
            radius:40,child: IconConstants.shoppingBagIcon),

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
