import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "Dilu's App",
          style: TextStyle(fontFamily: 'Great Vibes', fontSize: 35),
        ),
        centerTitle: false,
        backgroundColor: Colors.green,
        leading: const Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Center(
        child: Container(
          // padding: EdgeInsets.all(10),
          alignment: Alignment(0, -1),
          height: 300,
          width: 450,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              // color: Colors.blue,
              // shape: BoxShape.circle
              // border: Border.all(color: Colors.black, width: 5)
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0)
              ]),

          child: const Text(
            'data',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
