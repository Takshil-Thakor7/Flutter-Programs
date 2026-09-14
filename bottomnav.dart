import 'package:flutter/material.dart';
import 'package:mohit_project/stack_example.dart';

import 'home.dart';
import 'image.dart';
import 'listview.dart';



class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  List screens = [
    Home(),
    ImagesExample(),
    ListViews(),
    StackEx()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.cyan,

          onTap: onTap,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(

                label: "Home",
                icon: Icon(Icons.account_balance_rounded)
            ),
            BottomNavigationBarItem(
                label: "Task",
                icon: Icon(Icons.task)
            ),

            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person)
            ),

            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person)
            ),

          ]
      ),
    );
  }
}
