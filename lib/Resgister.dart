import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Widget _Labels({String firstName}) => Container(
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
              labelText: firstName,
              floatingLabelBehavior: FloatingLabelBehavior.auto),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.deepOrange,
            iconSize: 25.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Center(
              child: Text(
                'Register Page',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.deepOrange,
              onPressed: () {

              },
            )
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _Labels(firstName: 'First Name'),
                _Labels(firstName: 'Last Name'),
                _Labels(firstName: 'Email Address'),
                _Labels(firstName: 'Email Address'),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      'Submit',style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
