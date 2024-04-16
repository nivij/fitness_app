import 'package:animate_do/animate_do.dart';
import 'package:animated_appear/animated_appear.dart';
import 'package:fitness_app/ui/splash/widget/Gobutton.dart';
import 'package:fitness_app/ui/splash/widget/text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'consts/mediaquery.dart';



class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // ScaledAnimationWidget(),
            Positioned(
              top: getHeight(60),
              left: getWidth(50),
              right: getWidth(0),
              bottom: getHeight(0),
              child: Textt(),
            ),
            Positioned(
              top: getHeight(490),
              left: getWidth(0),
              right: getWidth(0),
              bottom: getHeight(0),
              child: AnimatedAppear(
                delay: Duration(milliseconds: 900),
                duration: Duration(milliseconds: 400),
                child: ZoomIn(
                    duration: Duration(seconds: 2),
                    animate: true,
                    child: GoButton()),
              ),
            ),

            Positioned(
                top: getHeight(390),
                left: getWidth(174),
                right: getWidth(-10),
                bottom: getHeight(170*2),
                child: AnimatedAppear(
                  delay: Duration(milliseconds: 2100),
                  duration: Duration(milliseconds: 400),
                  child: FadeIn(
                    duration: Duration(seconds: 5),
                    child: Text(
                      "Best practices and traning complexes in one mobile application",
                      style: GoogleFonts.poppins(color: Color(0XFFE3C1F1),fontSize: 12.2,fontWeight: FontWeight.w900),
                      textAlign: TextAlign.left,
                    ),
                  ),
                )),

            Positioned(
              top: getHeight(-500),
              left: getWidth(-130),
              right:  getWidth(250),
              bottom: getHeight(294),
              child: AnimatedAppear(
                delay: Duration(milliseconds:1000),
                duration: Duration(milliseconds: 400),
                child: SlideInDown(
                  duration: Duration(seconds: 3),
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFFE3C1F1),
                    ),

                  ),
                ),
              ),
            )
          ],
        ));
  }
}
