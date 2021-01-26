import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'welcomePage.dart';
import 'package:vodqaapp/FirstPage.dart';
import 'Resgister.dart';
import 'WelcomePageViewer.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(mainApp());
}

class mainApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
        debugShowCheckedModeBanner: false,
        //home : welcomePage()
      home: PageViewer(),

       //home: HomePage(),

      // home: RegisterPage(),
    );
  }
}

//
// class vodQAapp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//          home: Scaffold(
//               backgroundColor: Colors.teal,
//              // appBar: AppBar(
//              //    title: Text("vodQA  shots"),
//              //    backgroundColor: Colors.deepOrangeAccent,
//              //    centerTitle: true,
//              //  ),
//           body: Center(
//             child: Image(
//             image: AssetImage('images/Vodqa-white.png')
//             ),
//           )
//           )
//     );
//     }
// }
//
// class myWidgetTest extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//          children: <Widget>[
//            Container(
//              width: 100.0,
//              color: Colors.black,
//            ),
//
//            Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//              Container(
//              width: 100.0,
//              height: 100.0,
//              color: Colors.purple,
//
//            ),
//                Container(
//                  width: 100.0,
//                  height: 100.0,
//                  color: Colors.deepOrangeAccent,
//                  margin: EdgeInsets.only(left:50.0,right:50.0),
//                ),
//            ],
//            ),
//            Container(
//              width: 100.0,
//              color: Colors.blue,
//            )
//          ],
//         ),
//         )
//       )
//     );
//   }
// }
//
// // class myProfile extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         home: Scaffold(
// //           backgroundColor: Colors.teal,
// //           body: SafeArea(
// //              child : Center(
// //                 child : Column(
// //                mainAxisAlignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               CircleAvatar(
// //                 radius: 50.0,
// //                 backgroundColor: Colors.white,
// //                 backgroundImage: AssetImage('images/vodqaCircle.png')
// //               ),
// //               Text(
// //                 'Welcome to vodQA',
// //                     style: TextStyle(
// //                     color: Colors.white,
// //                     fontWeight: FontWeight.bold,
// //                         fontStyle: FontStyle.italic,
// //                         fontFamily: 'Langar',
// //                         fontSize: 30.0
// //                     ),
// //               ),
// //               Text(
// //                 'FLUTTER SHOTS',
// //                 style: TextStyle(
// //                   fontFamily: 'SourceSansPro',
// //                     fontSize: 20.0,
// //                   letterSpacing: 2.5
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 20.0,
// //                 width: 200.0,
// //                 child: Divider(
// //                   color: Colors.white,
// //                   thickness: 0.5,
// //                 ),
// //               ),
// //               Card(
// //                 margin: EdgeInsets.all(10.0),
// //                 color: Colors.teal.shade400,
// //                 child: ListTile(
// //                     title: Text(
// //                      'VodQA is an opportunity for testing enthusiast to get together, network and collaborate on the latest developments in software testing world.',style: TextStyle(
// //                       color: Colors.white,
// //                       fontFamily: 'SourceSansPro',
// //                       fontWeight: FontWeight.normal,
// //                       fontSize: 22.0
// //                      )
// //                     )
// //                 )
// //                 ),
// //                   Column(
// //                     children: <Widget>[
// //                      FlatButton(
// //                        child: Text("Let's Start....",
// //                               style: TextStyle(
// //                                   decoration: TextDecoration.underline,
// //                                   fontFamily: 'OpenSans-ExtraBoldItalic', fontSize: 20.0,
// //                                   color: Colors.white)),
// //                           onPressed: (){
// //                             FirstPage();
// //                              },
// //
// //                      )
// //                  ],
// //                ),
// //             ],
// //           ),
// //            ),
// //         )
// //     )
// //     );
// //   }
// // }
//
// class BottomBarPage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home : Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           title: Text('Home'),
//           ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.account_circle),
//             title: Text('Register'),
//         ),
//         BottomNavigationBarItem(
//               icon: Icon(Icons.vpn_key),
//               title: Text('Login'),
//           ),
//     ],
//
//      )
//      )
//     );
//   }
// }
//
// Future navigateToSubPage(context) async {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBarPage()));
// }

