import 'package:flutter/material.dart';

class MyDynamicSquare extends StatelessWidget {
  // const MyDynamicSquare({super.key});
  final String child;
  MyDynamicSquare({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        color: Colors.purple,
        child: Center(child: Text(child)),
      ),
    );
  }
}
