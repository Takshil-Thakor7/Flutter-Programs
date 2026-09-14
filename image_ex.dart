import 'package:flutter/material.dart';

class ImageEx extends StatelessWidget {
  const ImageEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child:Column(
        children: [

          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5TE-u7GH3S9iR7L73S869yyHHhCVMfLlmrso3plQOBnX0Qgyr6AWOrRg&s=10"),

          ),


          Image.asset("assets/images/kamo.jpg",
           height: 300,
           width: 300,
          ),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5TE-u7GH3S9iR7L73S869yyHHhCVMfLlmrso3plQOBnX0Qgyr6AWOrRg&s=10",
            height: 300,
            width: 300,
            //fit: BoxFit.fill, // stretch a img

          ),
        ],
      ),
      ),
    );
  }
}

