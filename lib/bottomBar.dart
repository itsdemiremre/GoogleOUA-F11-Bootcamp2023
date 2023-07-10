import 'package:flutter/material.dart';
import 'package:routeviser_app/pages/myhomepage.dart';
import 'package:routeviser_app/profile_page.dart';
import 'package:routeviser_app/guide_page.dart';

class BottomBar extends StatefulWidget {
  static const String id = 'bottom_bar';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    MyHomePage(),
    GuidePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffF5F4F0),
          selectedItemColor: Color(0xff7C6AA6),
          unselectedItemColor: Color(0xff5E5C65),
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: '...'),
            BottomNavigationBarItem(
                icon: Icon(Icons.translate_rounded), label: '...'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: '...'),
          ]),
    );
  }
}
