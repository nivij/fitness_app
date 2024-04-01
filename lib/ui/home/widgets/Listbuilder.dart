import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/tabTexts.dart';

class ListBuilderTab extends StatefulWidget {
  final Function(Color) onTabSelected; // Callback function

  const ListBuilderTab({Key? key, required this.onTabSelected}) : super(key: key);

  @override
  _ListBuilderTabState createState() => _ListBuilderTabState();
}

class _ListBuilderTabState extends State<ListBuilderTab> {
  int _selectedIndex = 0; // Initially no tab is selected

  @override
  Widget build(BuildContext context) {
    List<TabText> tabTextList = generateTabTextList();

    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabTextList.length,
        itemBuilder: (context, index) {
          String text = tabTextList[index].text;
          return buildTabItem(text, index);
        },
      ),
    );
  }

  Widget buildTabItem(String text, int index) {
    final isSelected = _selectedIndex == index;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          widget.onTabSelected(isSelected ? Colors.transparent : Colors.black); // Call the callback function
          setState(() {
            _selectedIndex = index;
          });
          if (index == 1 || index == 2) { // Check if the index is 1 or 2
            _showBottomSheet(context,index);
          }
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
          width: calculateTabWidth(text),
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(2, 1),
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  double calculateTabWidth(String text) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: GoogleFonts.quicksand(
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.width + 40;
  }

  void _showBottomSheet(BuildContext context,int index) {
    showModalBottomSheet(
      barrierColor: Colors.transparent,
      elevation: 0,
      context: context,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.92,
          maxChildSize: 1,
          minChildSize: 0.7,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: ListView.builder(
                controller: scrollController,
                itemCount: 20, // Example itemCount
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            );
          },
        );
      },
    ).then((value) {
      // This code executes when the bottom sheet is closed
      setState(() {
        // Call the callback function
        _selectedIndex = 0; // Select tab 0
        if (_selectedIndex == 0) {
          widget.onTabSelected(Color(0XFFF2F2F2)); // Change AppBar color to white
        } else {
          widget.onTabSelected(Colors.black); // Change AppBar color to black for other indices
        }
      });
    });
  }

}
