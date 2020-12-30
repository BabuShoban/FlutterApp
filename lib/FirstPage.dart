
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: IconButton(icon: Icon(Icons.menu)),
            title: Center(
              child: Text('Home Page',style:TextStyle(
                  fontSize: 20.0,
                fontWeight: FontWeight.bold
              ) ,
              ),
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search),)
            ],
          ),
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.teal,
              selectedFontSize: 15.0,
              selectedIconTheme: IconThemeData(color: Colors.teal),
              iconSize: 25.0,
              items: const<BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  title: Text('Register'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.vpn_key),
                  title: Text('Login'),
                ),
              ],

            )
        )
    );
  }
}

