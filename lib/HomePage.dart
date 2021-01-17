import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color:  Colors.deepOrange,
            onPressed: () {
              setState(() {
                TextField();
              });
            },
          ),
          title: Center(
            child: Text(
              'Home Page',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color:  Colors.deepOrange,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              color:  Colors.deepOrange,
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  FlatButton(
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      width: 150,
                      height: 150,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image(
                              image: AssetImage('images/iPhone8.png'),
                            ),
                          ),
                          Text(
                            'Iphone 8',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Price: 60,000 rs',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    onPressed: (){},
                  ),
                  FlatButton(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image(
                              image: AssetImage('images/iPhone-x-png.png'),
                            ),
                          ),
                          Text(
                            'Iphone 12 Pro',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Price: 1,00,000 rs',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
              Row(children: <Widget>[
                FlatButton(
                  child: Container(
                     margin: EdgeInsets.all(20.0),
                    width: 150,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            image: AssetImage('images/iPhone12.png'),
                          ),
                        ),
                        Text(
                          'Iphone 12',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price: 1,20,000 rs',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  onPressed: (){},
                ),
                FlatButton(
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            image:
                                AssetImage('images/samsung-galaxy-s10-plus.png'),
                          ),
                        ),
                        Text(
                          'Samsung Galaxy S20',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price: 90,000 rs',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  onPressed: (){},
                ),
              ]),
              Row(children: <Widget>[
                FlatButton(
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    width: 150,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            image: AssetImage('images/samsungS20.png'),
                          ),
                        ),
                        Text(
                          'Samsung Galaxy S20',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price: 75,000 rs',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  onPressed: (){},
                ),
                FlatButton(
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            image: AssetImage('images/boat head.png'),
                          ),
                        ),
                        Text(
                          'Boat Rockers',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price: 2500 rs',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  onPressed: (){},
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
