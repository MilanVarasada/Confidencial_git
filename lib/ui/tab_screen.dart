import '../ui/user_profile_screen.dart';

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
  List<Widget> _pages = [HomeScreen(), PlayListScreen(), SearchScreen(), UserProfileScreen()];

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
        onTap: (index){
          _selectedPage(index);
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Image.asset(_selectedPageIndex == 0? 'assets/images/selectedHome.png'  : 'assets/images/home.png',width: 40.0,height: 40.0,), title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(_selectedPageIndex == 1 ? 'assets/images/selectedQ.png'  : 'assets/images/q.png',width: 40.0,height: 40.0,),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Image.asset(_selectedPageIndex == 2 ? 'assets/images/selectedMic.png'  : 'assets/images/mic.png',width: 40.0,height: 40.0,),
              title: Text('')),
              BottomNavigationBarItem(
              icon: Image.asset(_selectedPageIndex == 3 ? 'assets/images/selectedUser.png'  : 'assets/images/user.png',width: 40.0,height: 40.0,),
              title: Text('')),
              
          // BottomNavigationBarItem(
          //     icon: ImageIcon(AssetImage('assets/images/q.png')),
          //     title: Text(''))    
        ],
      ),
    );
  }
}
