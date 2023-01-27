import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            height: 100,
            color: Colors.purple,
          ),
        ),
        Expanded(
          child: Container(
            // height: 300,
            color: Colors.pink,
          ),
        )
      ],
    ));
  }
}
