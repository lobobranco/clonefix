import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'soon.dart';
import 'downloads.dart';
import 'more.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Search(),
    Soon(),
    Downloads(),
    More(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        selectedFontSize: 10,
        unselectedFontSize: 10,
        iconSize: 25,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Início'),
            activeIcon: Icon(Icons.home, color: Colors.white),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Buscas'),
            activeIcon: Icon(Icons.search, color: Colors.white),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_play),
            title: Text('Em breve'),
            activeIcon: Icon(Icons.local_play, color: Colors.white),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            title: Text('Downloads'),
            activeIcon: Icon(Icons.file_download, color: Colors.white),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_headline),
            title: Text('Mais'),
            activeIcon: Icon(Icons.view_headline, color: Colors.white),
          ),
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
