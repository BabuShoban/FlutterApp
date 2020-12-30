
import 'package:flutter/material.dart';

import 'welcomePage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              leading: IconButton(icon: Icon(Icons.menu),
                onPressed: (){},),
              title: Center(
                child: Text('Home Page',style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ) ,
                ),
              ),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search),
                  onPressed: (){
                  },),
                IconButton(icon: Icon(Icons.more_vert),
                  onPressed: (){},)
              ],
            ),
            //body: welcomePage(),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.teal,
              fixedColor: Colors.white,
              selectedFontSize: 15.0,
              selectedIconTheme:
                IconThemeData(
                  color: Colors.white),
              iconSize: 25.0,
              unselectedItemColor: Colors.white,
              items: const<BottomNavigationBarItem>[
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

            )
        )
    );
  }
}


