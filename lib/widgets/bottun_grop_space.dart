import 'package:flutter/material.dart';


class ButtonGroupSpaced extends StatefulWidget {
  final List<String> items;

  ButtonGroupSpaced({this.items});
  @override
  _ButtonGroupSpacedState createState() => _ButtonGroupSpacedState();
}

class _ButtonGroupSpacedState extends State<ButtonGroupSpaced> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: widget.items.map((e){
          int currentIndex = widget.items.indexOf(e);
          return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = currentIndex;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
              margin: EdgeInsets.only(right: 8.0, bottom: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: activeIndex == currentIndex
                      ? Color.fromRGBO(47, 105, 248, 0.1)
                      : Color.fromRGBO(163, 167, 168, 1),
                ),
              ),
              child: Text(e),
            ),
          );
        }).toList(),
      ),
    );
  }
}
