
import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(35),
                ),
              ),

            ],
          ),
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(35),
            ),
          ),

        ],
      )
    );
  }
}
