import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../res/constant/mediaquery.dart';

class Fitnesstext extends StatelessWidget {
  const Fitnesstext({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0 * Constants.screenWidthMultiplier),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fitness",
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 44 * Constants.screenWidthMultiplier,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Tracking Device",
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 40 * Constants.screenWidthMultiplier,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
