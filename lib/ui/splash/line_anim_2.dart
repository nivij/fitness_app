import 'package:flutter/material.dart';



class ScaledAnimationWidget extends StatefulWidget {
  @override
  _ScaledAnimationWidgetState createState() => _ScaledAnimationWidgetState();
}

class _ScaledAnimationWidgetState extends State<ScaledAnimationWidget> {
  double _width = 200.0;
  double _height = 7.0;

  @override
  void initState() {
    super.initState();
    // Start the animation when the widget is first built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _startAnimation();
    });
  }

  void _startAnimation() {
    setState(() {
      _width = 100.0;
      _height = 7.0; // You can adjust the desired final height here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2), // Adjust the duration as needed
              width: _width,
              height: _height,
              color: Colors.blue,

            ),
            SizedBox(height: 15,),
            AnimatedContainer(
              duration: Duration(seconds: 2), // Adjust the duration as needed
              width: _width,
              height: _height,
              color: Colors.blue,

            ),
            SizedBox(height: 15,),
            AnimatedContainer(
              duration: Duration(seconds: 2), // Adjust the duration as needed
              width: _width,
              height: _height,
              color: Colors.blue,

            ),
          ],
        ),
      ),
    );
  }
}
