import 'package:flutter/material.dart';
import 'package:my_app/container.dart';
import 'package:my_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
    // return MaterialApp(title: "Dilu's App", home: MyHome());
    // Scaffold(
    //   //App Bar
    //   appBar: AppBar(
    //     title: const Text(
    //       "Dilu's App",
    //       style: TextStyle(fontFamily: 'Great Vibes', fontSize: 35),
    //     ),
    //     centerTitle: false,
    //     backgroundColor: Colors.green,
    //     leading: const Icon(Icons.home),
    //     actions: [
    //       IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    //       IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
    //     ],
    //   ),
    //   //Body
    //   body: Center(
    //       child: Container(
    //           color: Colors.amber,
    //           constraints: const BoxConstraints(
    //               minHeight: 300, minWidth: 500, maxHeight: 400),
    //           child: ListView(
    //             children: [
    //               //heading/Logo
    //               Container(
    //                 // alignment: Alignment.center,
    //                 padding: const EdgeInsets.all(10),
    //                 child: Text(
    //                   "Dilu's App",
    //                   style: TextStyle(
    //                       color: Colors.blue[500],
    //                       fontWeight: FontWeight.w500,
    //                       fontSize: 30),
    //                 ),
    //               ),
    //               //Sign in
    //               Container(
    //                 // alignment: Alignment.center,
    //                 padding: const EdgeInsets.all(10),
    //                 child: const Text(
    //                   "Sign in",
    //                   style: TextStyle(fontSize: 20),
    //                 ),
    //               ),
    //               //Username
    //               Container(
    //                 //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
    //                 padding: const EdgeInsets.symmetric(horizontal: 15),
    //                 child: const TextField(
    //                   decoration: InputDecoration(
    //                       border: OutlineInputBorder(),
    //                       labelText: 'Email',
    //                       hintText: 'Enter valid email id as abc@gmail.com'),
    //                 ),
    //               ),
    //               Container(
    //                 // child: const Padding(
    //                 padding: const EdgeInsets.only(
    //                     left: 15.0, right: 15.0, top: 15, bottom: 0),
    //                 //padding: EdgeInsets.symmetric(horizontal: 15),
    //                 child: const TextField(
    //                   obscureText: true,
    //                   decoration: InputDecoration(
    //                       border: OutlineInputBorder(),
    //                       labelText: 'Password',
    //                       hintText: 'Enter secure password'),
    //                 ),
    //                 // ),
    //               ),
    //             ],
    //           ))),
    // ),
    // );
  }
}
