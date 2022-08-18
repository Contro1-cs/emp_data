import 'package:emp_data/add_page.dart';
import 'package:emp_data/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    AddPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 30,
        selectedFontSize: 13,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black45,

        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Color(0xffF3EDF5)),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add",backgroundColor: Color(0xffF3EDF5)),
          // BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Color(0xffF3EDF5)),
          // BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Color(0xffF3EDF5)),
          // BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add",backgroundColor: Color(0xffF3EDF5)),
          // BottomNavigationBarItem(icon: Icon(Icons.apartment),label: "Events",backgroundColor: Color(0xffF3EDF5)),
          // BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: Color(0xffF3EDF5)),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),

    );
  }
}
