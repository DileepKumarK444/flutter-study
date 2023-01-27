import 'package:flutter/material.dart';
import 'package:my_app/components/circle.dart';
import 'package:my_app/components/dynamicsquare.dart';
import 'package:my_app/components/square.dart';
import 'package:my_app/constants.dart';

class MyHome extends StatelessWidget {
  // const MyHome({super.key});
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
    'post 8',
    'post 9',
    'post 10',
  ];

  final List _stories = [
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
    'Story 5',
    'Story 6',
    'Story 7',
    'Story 8',
    'Story 9',
    'Story 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //     body: ListView(
        //   physics: NeverScrollableScrollPhysics(),
        //   children: [
        //     MySquare(),
        //     MySquare(),
        //     MySquare(),
        //     MySquare(),
        //     MySquare(),
        //   ],
        // )
        body: Column(
      children: [
        //Stories
        SizedBox(
          height: 120,
          child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyCircle(child: _stories[index]);
              }),
        ),

        //Posts
        Expanded(
          child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MyDynamicSquare(child: _posts[index]);
              }),
        ),
      ],
    ));
  }
}
