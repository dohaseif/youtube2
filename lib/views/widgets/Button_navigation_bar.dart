import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int naIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 26,
      currentIndex: naIndex,

      items: [
        BottomNavigationBarItem(

          icon: Icon(
            Icons.desktop_windows,
            color: Colors.grey,
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.grey),
          ),
          backgroundColor: naIndex == 0 ? Colors.white : Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.trending_up,
            color: Colors.grey,
          ),

          title: Text(
            'Trending',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.subscriptions,
            color: Colors.grey,
          ),
          title: Text(
            'Subscriptioc',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.drafts,
            color: Colors.grey,
          ),
          title: Text(
            'Inbox',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.video_library,
            color: Colors.grey,
          ),
          title: Text(
            'Library',
            style: TextStyle(color: Colors.grey),
          ),
        ),

      ],
    );

  }
}
