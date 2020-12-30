import 'package:flutter/material.dart';
import 'FirstPage.dart';

class welcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
              child : Center(
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/vodqaCircle.png')
                    ),
                    Text(
                      'Welcome to vodQA',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Langar',
                          fontSize: 30.0
                      ),
                    ),
                    Text(
                      'FLUTTER SHOTS',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 2.5
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                      width: 200.0,
                      child: Divider(
                        color: Colors.white,
                        thickness: 0.5,
                      ),
                    ),
                    Card(
                        margin: EdgeInsets.all(10.0),
                        color: Colors.teal.shade400,
                        child: ListTile(
                            title: Text(
                                'VodQA is an opportunity for testing enthusiast to get together, network and collaborate on the latest developments in software testing world.',style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.normal,
                                fontSize: 22.0
                            )
                            )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FlatButton(
                          child: Text("Let's Start....",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'OpenSans-ExtraBoldItalic', fontSize: 25.0,
                                  color: Colors.white)),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),

        )
    );
  }
}
