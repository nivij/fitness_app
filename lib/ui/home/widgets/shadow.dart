import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/constant/mediaquery.dart';

class CustomShadowWidget extends StatelessWidget {
  const CustomShadowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildShadow(18, -30, 1.0),
        _buildShadow(35, -40, 0.5),
        _buildShadow(70, -60, 0.3),
        _buildBackgroundContainer(),
        Positioned.fill(
          child: _buildCarousel(),
        ),
      ],
    );
  }

  Widget _buildShadow(double horizontalPadding, double verticalOffset, double opacity) {
    return Padding(
      padding: EdgeInsets.only(left: horizontalPadding, right: horizontalPadding, top: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Color(0XFFE3C1F1).withOpacity(opacity),
              blurRadius: 3,
              offset: Offset(0, verticalOffset),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF2F2F2F),
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      items: [
        _buildCarouselItem(),
        _buildCarouselItem(),
      ],
      options: CarouselOptions(
        height: 290,
        enableInfiniteScroll: false,
        viewportFraction: 1.0,
        onPageChanged: (index, _) {
          // Handle page change if needed
        },
      ),
    );
  }

  Widget _buildCarouselItem() {
    return Container(
      color: Color(0XFF2F2F2F),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLeftColumn(),
          _buildRightColumn(),
        ],
      ),
    );
  }
  Widget _buildLeftColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Universal\nFitness\nExpander\n",
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 21 * Constants.screenWidthMultiplier,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              TextSpan(
                text: "+\n",
                style: GoogleFonts.alegreya(
                  textStyle: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 30 * Constants.screenWidthMultiplier,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextSpan(
                text: "12",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 80 * Constants.screenWidthMultiplier,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 20,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
          ),
          child: Center(
            child: Text(
              "Programs",
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 10 * Constants.screenWidthMultiplier,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRightColumn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("scan the\ndevice's QR\nto connect", style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 14 * Constants.screenWidthMultiplier,
                fontWeight: FontWeight.bold,
              ),),),
            SizedBox(width: 70),
            Icon(Icons.qr_code, color: Colors.white,size:  40,),
          ],
        ),
        SizedBox(height: 40,),
        Container(
          height: 150 * Constants.screenWidthMultiplier,

          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/expander.jpg"),
          ),
        )

      ],
    );
  }
}
