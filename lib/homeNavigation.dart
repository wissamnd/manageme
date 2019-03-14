import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'calculator_widget.dart';

class Nav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Nav> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Calculator(),
    Calculator(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title:Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text("Messeges"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}