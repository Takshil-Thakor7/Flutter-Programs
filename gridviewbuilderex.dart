import 'package:flutter/material.dart';

class GridBuilderEx extends StatelessWidget {
  GridBuilderEx({super.key});

  List color = [Colors.red,Colors.blue,Colors.yellow,Colors.redAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Builder Ex"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          ),
          itemCount: color.length,
          itemBuilder: (context,index)
          {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 50,
                  color: color[index],
                ),
              );
          }
      ),
    );
  }
}
