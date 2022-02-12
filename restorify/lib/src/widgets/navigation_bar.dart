import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class NavigationBar_1 extends StatefulWidget {
  static int _selectedIndex = 0;

  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar_1> {
  void _onItemTapped(int index) {
    setState(() {
      NavigationBar_1._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final grey = Colors.grey;
    return BottomNavyBar(
      backgroundColor: Color.fromARGB(43, 0, 0, 0),
      selectedIndex: NavigationBar_1._selectedIndex,
      showElevation: true,
      itemCornerRadius: 24,
      onItemSelected: (index) => _onItemTapped(index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.dashboard),
          title: Text('Home'),
          textAlign: TextAlign.center,
          
          activeColor: Colors.purple,
          inactiveColor: grey,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
          textAlign: TextAlign.center,
          activeColor: Color.fromARGB(255, 243, 118, 68),
          inactiveColor: grey,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.check),
         title: Text('Todo list'), 
         textAlign: TextAlign.center,
         activeColor: Color.fromARGB(255, 218, 99, 188),
         inactiveColor: grey,
         ),
         BottomNavyBarItem(
           icon: Icon(Icons.settings), 
           title: Text('Settings'),
           textAlign: TextAlign.center,
           inactiveColor: grey,
           ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}