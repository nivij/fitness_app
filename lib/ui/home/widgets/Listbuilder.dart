import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListBuilderTab extends StatelessWidget {
  const ListBuilderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(

              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 4),
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Change opacity as needed
                    blurRadius: 10,
                    offset: Offset(2, 1), // Adjust the shadow position as needed
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
