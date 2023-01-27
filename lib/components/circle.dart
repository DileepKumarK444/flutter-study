import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  // const MyCircle({super.key});
  final String child;
  MyCircle({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: 100,
        // color: Colors.purple,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.pink[300]),
        child: Center(child: Text(child)),
      ),
    );
  }
}
