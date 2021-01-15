import 'package:flutter/material.dart';
import 'package:vodqaapp/Contents.dart';

import 'FirstPage.dart';

class PageViewer extends StatefulWidget {
  @override
  _PageViewerState createState() => _PageViewerState();
}

class _PageViewerState extends State<PageViewer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  itemCount: contents.length,
                  itemBuilder: (_, i) {
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Text(
                            contents[i].title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Color(0xFFFF7643)),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Image(
                          image: AssetImage(contents[i].image),
                        ),
                      ],
                    );
                  },
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color(0xFFFF7643),
                child: Text(
                  'Next...',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Langar',
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
