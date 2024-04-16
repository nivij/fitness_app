import 'package:flutter/material.dart';

class LineAnimationWidget extends StatefulWidget {
  @override
  _LineAnimationWidgetState createState() => _LineAnimationWidgetState();
}

class _LineAnimationWidgetState extends State<LineAnimationWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _scaleAnimation2;
  late Animation<double> _scaleAnimation3;
  late Animation<double> _opacityAnimation;
  late Animation<double> _thicknessAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000,), // Adjust the duration as needed
    );
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _startAnimation();
    });
    // Define the scale animation (start larger, end smaller)
    _scaleAnimation = Tween(begin: 1.0, end: 0.5).animate(_controller);
    _scaleAnimation2 = Tween(begin: 1.0, end: 0.7).animate(_controller);
    _scaleAnimation3 = Tween(begin: 1.0, end: 0.9).animate(_controller);

    // Define the opacity animation
    _opacityAnimation = Tween(begin: 1.0, end: 1.0).animate(_controller);
    // Start the animation when the widget is built
    _controller.forward();
  }
  double _width1 = 120.0;
  double _width2 = 140.0;
  double _width3 = 160.0;
  double _height = 5.0;



  void _startAnimation() {
    setState(() {
      _width1 = 60.0;
      _width2 = 80.0;
      _width3 = 100.0;
      _height = 5.0; // You can adjust the desired final height here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Transform.rotate(
          angle: 889.07,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: FractionallySizedBox(
                  widthFactor: 0.18,

                  child: Container(
                    color: Colors.black, // You can use any color you want
                    width: _width1, // Adjust the initial width
                    height: _height,
                    transform: Matrix4.identity()
                      ..scale(_scaleAnimation.value, 1.3),// Adjust the line height
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10,),
        Transform.rotate(
          angle: 889.07,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: FractionallySizedBox(
                  widthFactor: 0.17,

                  child: Container(
                    color: Colors.black, // You can use any color you want
                    width: _width2, // Adjust the initial width
                    height: _height,
                    transform: Matrix4.identity()
                      ..scale(_scaleAnimation2.value, 1.3),// Adjust the line height
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10,),
        Transform.rotate(
          angle: 889.07,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: FractionallySizedBox(
                  widthFactor: 0.16,

                  child: Container(
                    color: Colors.black, // You can use any color you want
                    width: _width3, // Adjust the initial width
                    height: _height,
                    transform: Matrix4.identity()
                      ..scale(_scaleAnimation3.value, 1.3),// Adjust the line height
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
