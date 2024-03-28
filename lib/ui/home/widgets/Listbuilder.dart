import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/tabTexts.dart';

class ListBuilderTab extends StatefulWidget {
  const ListBuilderTab({Key? key}) : super(key: key);

  @override
  _ListBuilderTabState createState() => _ListBuilderTabState();
}

class _ListBuilderTabState extends State<ListBuilderTab> {
  int _selectedIndex = 0;

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
          setState(() {
            _selectedIndex = index;
          });
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
}
