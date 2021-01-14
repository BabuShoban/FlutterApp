import 'package:flutter/material.dart';
import 'FirstPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        //resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.pink,
            iconSize: 25.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Text(
              'Profile Page',
              style: TextStyle(color: Colors.pink),
            ),
          ),
        ),
      ),
    );
  }
}
