import 'package:flutter/material.dart';
import 'package:nena/home_screen.dart';

import 'createPodcast.dart';
import 'nenaProfileScreen.dart';

class NenaAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  NenaAppBar() {
    bottomBarItems.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.headset,
          color: Color(0xFFD4145A),
        ),
        icon: Icon(Icons.headset, color: Color(0xFFD4145A)),
        title: Text(
          "Listen",
          style: TextStyle(color: Color(0xFFD4145A)),
        )));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.add_circle, color: Colors.grey),
        title: Text(
          "Create Podcast",
          style: TextStyle(color: Colors.grey),
        )));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.person, color: Colors.grey),
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.grey),
        )));
  }
  @override
  Widget build(BuildContext context) {
    int _selectedPage = 0;
    
    return Material(
      elevation: 10.0,
      child: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          _selectedPage = index;
          
          switch (index) {
      case 0:
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
        break;
      case 1:
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CreatePodcastScreen(),
          ),
        );
        break;
      case 2:
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ),
        );
        break;
      default:   Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
    }
        },
        items: bottomBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
