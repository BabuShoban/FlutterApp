import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                'Register Page',
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 400,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      focusNode: new FocusNode(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(20.0),
                            ),
                          ),
                          labelText: 'First Name',
                          floatingLabelBehavior: FloatingLabelBehavior.auto),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      focusNode: new FocusNode(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(20.0),
                            ),
                          ),
                          labelText: 'Last Name',
                          floatingLabelBehavior: FloatingLabelBehavior.auto),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      focusNode: new FocusNode(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(20.0),
                            ),
                          ),
                          labelText: 'Email Address',
                          floatingLabelBehavior: FloatingLabelBehavior.auto),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      focusNode: new FocusNode(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(20.0),
                            ),
                          ),
                          labelText: 'Phoen Number',
                          floatingLabelBehavior: FloatingLabelBehavior.auto),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    color: Colors.pink,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
