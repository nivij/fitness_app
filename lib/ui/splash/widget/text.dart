
import 'package:animate_do/animate_do.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts/mediaquery.dart';
import '../line_anim.dart';

class Textt extends StatelessWidget {
  const Textt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.transparent,      body: FractionalTranslation(
      translation: Offset(0.06, 0.0),
  child:   Transform.rotate(
          angle: 18.34,
          child: Stack(
clipBehavior: Clip.none,

            children: [
              Positioned(
                top: getHeight(180),
                left: getWidth(-250),
                bottom: getHeight(0),
                right: getWidth(0),
                child: SlideInLeft(
                    animate: true,
                    duration: Duration(milliseconds:1200,),child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: LineAnimationWidget(),
                    ))
              ),
              Positioned(
                top: getHeight(-10),
                left: getWidth(20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50,bottom: 0),
                  child: SlideInLeft(
                    animate: true,
                    duration: Duration(milliseconds: 2500,),
                    child: SafeArea(
                      child: Center(
                        child: Text("Better",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: getFont(100) ,
                              fontWeight: FontWeight.w800,fontStyle: FontStyle.italic,)),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: getHeight(119),
                left: getWidth(30),
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: SlideInLeft(

                    animate: true,
                    duration: Duration(milliseconds:1200),
                    child: FittedBox(
                      child: Text("Faster",
                          style: GoogleFonts.poppins(
                            color: Color(0XFFE3C1F1),
                            fontSize: getFont(100) ,
                            fontWeight: FontWeight.w800,fontStyle: FontStyle.italic,)),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: getHeight(200),
                left: getWidth(-24),
                right: -50,
                child: SlideInLeft(
                  animate: true,
                  duration: Duration(milliseconds: 2500),
                  child: FittedBox(
                    child: Text("Stronger",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: getFont(100),
                          fontWeight: FontWeight.w800,fontStyle: FontStyle.italic,)),
                  ),
                ),
              ),
            ],
          ),
        ),
),
    );
  }
}
