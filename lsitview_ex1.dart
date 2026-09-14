import 'package:flutter/material.dart';

class ListViewEx1 extends StatelessWidget {
  ListViewEx1({super.key});

  List color = [Colors.blue,Colors.green,Colors.purple,Colors.red,Colors.blueGrey];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(

        //itemCount: 5,
        itemCount: color.length,
        itemBuilder: (context,index){
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: color[index],
                //color: index == 1 ? Colors.blue : Colors.red,
                child: Text("$index"),
              ),
            ),
          );


        }


      ),
    );
  }
}
