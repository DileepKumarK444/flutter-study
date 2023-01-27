import 'package:flutter/material.dart';

var myAppBar = AppBar(
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
);
