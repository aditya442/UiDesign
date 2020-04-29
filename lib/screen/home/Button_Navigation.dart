import 'package:flutter/material.dart';
import './Home_page.dart';
import './Profile_page.dart';


class Buttom_Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Buttom_Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home_Page(),
    Profile_Page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        fixedColor: Colors.amber,

        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile Saya')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}