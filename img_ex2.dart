import 'package:flutter/material.dart';

class ImgEx extends StatelessWidget {
  const ImgEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [

          Row(

            children: [

              Container(
                height: 50,
                width: 50,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  "kamo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Image.asset("assets/images/kamo.jpg",
                height: 200,
                width: 200,
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5TE-u7GH3S9iR7L73S869yyHHhCVMfLlmrso3plQOBnX0Qgyr6AWOrRg&s=10",
                height: 200,
                width: 200,
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRozRVZSM5-vCxG0cSC0LHb6HghUmyhlrWQ8clOZfR59A&s=10",
                height: 200,
                width: 200,
              ),

            ],

          ),

          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  "kirti patel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

             Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs7LWlARIV6gFe0T8uu1NBabcxZNqETPDbVT_ZvT4bbg&s=10",

               height: 200,
               width: 200,

             ),

              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuO0T3ZrX7mpqceS3Lkt7dlW-bRv4Tjy3uA1kflIHLjQ&s=10",

                height: 200,
                width: 200,

              ),

              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcahbPa8tM3_HbL1t8ePyoABK6W2KbyJoZ7fY_GrdgrQ&s=10",

                height: 200,
                width: 200,

              ),

            ],
          ),


        ],
      ),
    );
  }
}
