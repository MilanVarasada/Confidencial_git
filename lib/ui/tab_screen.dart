import '../ui/searchScreen.dart';

import '../homeScreen.dart';
import '../ui/playListScreen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  static const routeName = '/tabScreen';
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Widget> _pages = [HomeScreen(), PlayListScreen(), SearchScreen()];

  int _selectedPageIndex = 1;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/q.png')),
              title: Text('')),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/q.png')),
              title: Text(''))
        ],
      ),
    );
  }
}
