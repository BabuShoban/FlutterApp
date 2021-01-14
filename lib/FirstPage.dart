import 'package:flutter/material.dart';

import 'welcomePage.dart';
import 'Resgister.dart';
import 'ProfilesPage.dart';
import 'HomePage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _index = 0;
  final List<Widget> _children = [HomePage(),ProfilePage(), RegisterPage()];
  void onTapped(int index) {
    setState(() {
      _index = index;
      print(_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _children[_index],
       // body: RegisterPage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTapped,
         currentIndex: _index,
          backgroundColor: Colors.white,
          fixedColor: Colors.pink,
          elevation: 0,
          selectedFontSize: 15.0,
          selectedIconTheme: IconThemeData(color: Colors.pink),
          iconSize: 25.0,
          unselectedItemColor: Colors.pink,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              title: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
