// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mitch_koko_full_flutter_beginner_course/pages/home_page.dart';
import 'package:mitch_koko_full_flutter_beginner_course/pages/profile_page.dart';
import 'package:mitch_koko_full_flutter_beginner_course/pages/settings_page.dart';
class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this keeps track of the current page to display
  int _selectedIndex = 0;

  //this method updates the new selected index
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
    print(index);
  }

  final List _pages = [
    HomePage(), //index 0
    ProfilePage(), //index 1
    SettingsPage(), //index 2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label : 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label : 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label : 'Settings',
          ),
        ],
      ),
    );
  }
}
