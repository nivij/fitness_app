import 'package:fitness_app/ui/home/widgets/Listbuilder.dart';
import 'package:fitness_app/ui/home/widgets/shadow.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/res/constant/appbar.dart';
import 'package:fitness_app/res/constant/icon.dart';
import 'package:fitness_app/ui/home/widgets/fitnessText.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F2F2),
      appBar: AppBarUtil.buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Fitnesstext(),
          ListBuilderTab(),
          SizedBox(height: 80),
          Container(
            height: 300,
            child: CustomShadowWidget(), // Use CustomShadowWidget here
          ),
        ],
      ),
    );
  }
}
