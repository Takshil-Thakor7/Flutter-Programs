import 'package:flutter/material.dart';

class StackEx1 extends StatelessWidget {
  StackEx1({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          AppBar(

          ),

          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(

                /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: NetworkImage("data:image/jpeg;base64,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")),

                ),*/

                child: Image.network("data:image/jpeg;base64,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",
                  height: 300,
                  fit: BoxFit.fill,

                ),
              ),

              Positioned(

                bottom: -50,
                right: 100,

                child: Container(

                  width: 250,
                  padding: EdgeInsets.all(18),
                  color: Colors.black,


                  child: Column(

                    children: [


                      Padding(


                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: name,
                          decoration: InputDecoration(
                            label: Text("Name"),
                            //hintText: "Name",
                            prefixIcon: Icon(Icons.person),
                            //border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: password,
                          decoration: InputDecoration(
                            label: Text("password"),
                            //hintText: "Name",
                            prefixIcon: Icon(Icons.person),
                            //border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),



                ),





              ),

              Positioned(

                bottom: -90,
                right: 189,

                child: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.keyboard_arrow_right),
                  backgroundColor: Colors.red,
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
