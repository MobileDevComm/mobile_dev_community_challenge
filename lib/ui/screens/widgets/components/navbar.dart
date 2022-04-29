import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 2),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 2),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 2),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 2),
            label: 'Notifications',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          // ),
        ],
        // currentIndex: 0,
        selectedItemColor: Colors.green,
        // onTap: (int index) {
        //   print('index: $index');
        // },
      ),
    );
  }
}
