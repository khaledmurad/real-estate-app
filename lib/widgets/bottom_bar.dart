import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

enum _SelectedTab { home, likes, search, profile }
class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _selectTab = _SelectedTab.home;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
    currentIndex: _SelectedTab.values.indexOf(_selectTab)
    ,items:[
      SalomonBottomBarItem(
        icon: Icon(Icons.home),
        title: Text("Home"),
        selectedColor: Colors.orange,
      ),
      SalomonBottomBarItem(
        icon: Icon(Icons.favorite_border),
        title: Text("Likes"),
        selectedColor: Colors.orange,
      ),
      SalomonBottomBarItem(
        icon: Icon(Icons.search),
        title: Text("Search"),
        selectedColor: Colors.orange,
      ),
      SalomonBottomBarItem(
        icon: Icon(Icons.person),
        title: Text("Profile"),
        selectedColor: Colors.orange,
      ),
    ],
      onTap: _handleIndexChanged,
    );
  }
}
