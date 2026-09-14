import 'package:flutter/material.dart';

import 'booking.dart';
import 'home.dart';


class MyAppointments extends StatefulWidget {
  MyAppointments({super.key});



  @override
  State<MyAppointments> createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {

  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  List screens = [
    Home(),
    Booking(),
    Home(),
    Home(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],


      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home, color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Booking",
                icon: Icon(Icons.confirmation_number,color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Offer",
                icon: Icon(Icons.local_offer,color: Colors.black,)
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person,color: Colors.black,)
            )
          ]
      ),
    );
  }
}
