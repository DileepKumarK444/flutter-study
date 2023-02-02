import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Variable
  int count = 0;
  int _selectedMenu = 0;
  //Method
  void _increaseCount() {
    setState(() {
      count++;
    });
  }

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedMenu = index;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'Tapped $count times',
            style: const TextStyle(fontSize: 20),
          ),
          GestureDetector(
            onTap: _increaseCount,
            child: Container(
              padding: const EdgeInsets.all(15),
              color: Colors.green[200],
              child: const Text(
                'Tap Here',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedMenu,
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomBar,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
