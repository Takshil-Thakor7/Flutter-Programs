import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Admin Dashboard",style: TextStyle(
          color: Colors.white,
        ),
        ),
        actions: [
          Icon(Icons.notifications,color: Colors.white,),
          Icon(Icons.logout,color: Colors.white,)
        ],

      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(Icons.admin_panel_settings),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: Column(
                      children: [
                        Text("Super Admin"),
                        Text("admin@gmail.com"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: Column(
                      children: [
                        Icon(Icons.lock_reset),
                      ],
                    ),
                  )

                ],


              ),
        ),
      ),


    );
  }
}
