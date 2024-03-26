import 'package:flutter/material.dart';

class CustomShadowWidget extends StatelessWidget {
  const CustomShadowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(40);

    final oneSideShadow = Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Color(0XFFE3C1F1),
              blurRadius: 3,
              offset: const Offset(0, -30), // changes position of shadow
            ),
          ],
        ),
      ),
    );
    final oneSideShadow2 = Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 7),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Color(0XFFE3C1F1).withOpacity(0.5),
              blurRadius: 3,
              offset: const Offset(0, -40), // changes position of shadow
            ),
          ],
        ),
      ),
    );
    final oneSideShadow3 = Padding(
      padding: const EdgeInsets.only(left: 70, right: 70, top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Color(0XFFE3C1F1).withOpacity(0.3),
              blurRadius: 3,
              offset: const Offset(0, -60), // changes position of shadow
            ),
          ],
        ),
      ),
    );

    return Stack(
      children: [
        oneSideShadow,
        oneSideShadow2,
        oneSideShadow3,
        Container(
          decoration: BoxDecoration(
            color: Color(0XFF2F2F2F),
            borderRadius: borderRadius,
          ),
        ),
      ],
    );
  }
}
