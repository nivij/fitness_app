import 'package:animate_do/animate_do.dart';

import 'package:animations/animations.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/homepage.dart';
import '../consts/mediaquery.dart';



class GoButton extends StatefulWidget {
  const GoButton({super.key});

  @override
  State<GoButton> createState() => _GoButtonState();
}

class _GoButtonState extends State<GoButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: const Duration(seconds: 16), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animationController.value * 2 * 3.14159265359,
                  child: CircularText(
                    backgroundPaint: Paint()
                      ..color = Colors.black
                      ..strokeWidth = 40
                      ..style = PaintingStyle.stroke,
                    children: [
                      TextItem(
                          text: Text(
                            "The best workouts for those who are used to moving only forward",
                            style: TextStyle(color: Colors.white, fontSize: getFont(13)),
                          ),
                          space: 2.7,
                          startAngle: 90,
                          startAngleAlignment: StartAngleAlignment.center),
                      TextItem(
                          text: Text(
                            "* forward only moving to used are who those for workouts best The *",
                            style: TextStyle(color: Colors.white, fontSize: getFont(13)),
                          ),
                          space: 2.7,
                          startAngle: -90,
                          startAngleAlignment: StartAngleAlignment.center,
                          direction: CircularTextDirection.anticlockwise),
                    ],
                    radius: getWidth(140),
                  ),
                );
              }),
          OpenContainer(
            middleColor: Color(0xFF808080),
            closedColor: Colors.black,
            transitionDuration: Duration(seconds: 2),
            transitionType: ContainerTransitionType.fadeThrough,
            closedShape: CircleBorder(),
            closedBuilder: (context, action) => Container(
              height: getHeight(250),
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              child: Center(
                child: Pulse(
                  animate: true,
                  duration: Duration(milliseconds: 1200),
                  infinite: true,
                  child: Text("Go!",
                      style: GoogleFonts.alegreyaSansSc(
                        fontSize: 72,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
            openBuilder: (context, action) => Container(

              child: Homepage()
            ),
          ),
        ],
      ),
    );
  }
}
