import 'package:fitness_app/ui/home/widgets/Listbuilder.dart';
import 'package:fitness_app/ui/home/widgets/shadow.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/res/constant/appbar.dart';
import 'package:fitness_app/res/constant/icon.dart';
import 'package:fitness_app/ui/home/widgets/fitnessText.dart';
import 'package:slider_button/slider_button.dart';

import '../../res/constant/mediaquery.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color appBarColor = Color(0XFFF2F2F2); // Initial AppBar color

  void changeAppBarColor(Color color) {
    setState(() {
      appBarColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Make scaffold background transparent
      appBar: AppBarUtil.buildAppBar(context, appBarColor), // Pass appBarColor to AppBarUtil
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.9],
            colors: [Color(0XFFF2F2F2), Colors.black], // Define your gradient colors
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Fitnesstext(),
            ListBuilderTab(onTabSelected: changeAppBarColor), // Pass the callback function
            SizedBox(height: 40),
            Container(
              height: 340 * Constants.screenWidthMultiplier,
              child: CustomShadowWidget(), // Use CustomShadowWidget here
            ),
            SizedBox(height: 20,),
            Center(child: SliderButton(
              action: () async{
                ///Do something here OnSlide
                return true;
              },
              label: Text(
                "Connect",
                style: TextStyle(
                    color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17),
              ),
              icon: Text(
                "x",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 44,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
