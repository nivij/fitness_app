import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fitnesstext extends StatelessWidget {
  const Fitnesstext({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fitness",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 47,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            "Tracking Device",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 47,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
