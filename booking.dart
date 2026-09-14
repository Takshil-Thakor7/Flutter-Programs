import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        centerTitle: true,
        title: const Text("My Appointments"),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          //Container(),
          //SizedBox(),
          Card(
            color: Color(0xff006400), // starts with 0xff

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("OrderID",style: TextStyle(
                          color: Color(0xffD4AF37),
                        ),),
                        Text("1234567890",style: TextStyle(
                          color: Color(0xffecf2f2),
                        ),),
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Appointment Date",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("Saturday,March 7, 2023",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Appointment Time",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("11:00 AM",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                          ],
                        ),
                      ),


                    ],
                  ),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Type of Service",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("Full Body Massage",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                            Text("Back Massage",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                            Text("head Massage",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Total Amount",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("Rs.100.00",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),

                ],
              ),
            ),

          ),

          Card(
            color: Color(0xff006400), // starts with 0xff

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("OrderID",style: TextStyle(
                          color: Color(0xffD4AF37),
                        ),),
                        Text("1234567890",style: TextStyle(
                          color: Color(0xffecf2f2),
                        ),),
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Appointment Date",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("Saturday,March 7, 2023",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Appointment Time",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("11:00 AM",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                          ],
                        ),
                      ),


                    ],
                  ),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Type of Service",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("Full Body Massage",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                            Text("Back Massage",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                            Text("head Massage",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Total Amount",style: TextStyle(
                              color: Color(0xffD4AF37),
                            ),),
                            Text("Rs.100.00",style: TextStyle(
                              color: Color(0xffecf2f2),
                            ),
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),

                ],
              ),
            ),

          )
        ],
      ),
    );
  }
}
