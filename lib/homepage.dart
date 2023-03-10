import 'package:flutter/material.dart';
import 'package:my_app/pages/account.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/message.dart';
import 'package:my_app/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Variable

  int _selectedMenu = 0;
  final _pages = [Home(), Message(), Settings(), Account()];

  //Method

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedMenu = index;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedMenu],
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _selectedMenu,
      //     type: BottomNavigationBarType.fixed,
      //     onTap: _navigateBottomBar,
      //     items: const [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.message), label: 'Message'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.settings), label: 'Settings'),
      //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      //     ]),
    );
  }
}
