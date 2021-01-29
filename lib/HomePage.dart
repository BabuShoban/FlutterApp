import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vodqaapp/API/products_API.dart';
import 'package:vodqaapp/Models/ProductsInfo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<ProductModel> _productModel;

  @override
  void initState() {
    _productModel = API_Manger().getProductsAPI();
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
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
                  fontFamily: 'Lancer',
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            // Container(
            //   margin: EdgeInsets.all(10.0),
            //   color: Colors.white,
            //   child: Text(
            //     'Welcome Mr. User',
            //     style: Theme.of(context).textTheme.headline5.copyWith(
            //         fontFamily: 'Lancer',
            //         fontWeight: FontWeight.bold,
            //         fontSize: 25.0,
            //         color: Colors.red),
            //   ),
            // ),
            Expanded(
              child: Container(
                child: FutureBuilder<ProductModel>(
                  future: _productModel,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10.0,
                                  crossAxisSpacing: 10.0,
                                  childAspectRatio: 1),
                          itemCount: snapshot.data.products.length,
                          itemBuilder: (context, index) {
                            var product = snapshot.data.products[index];
                            var imageURL = product.thumbnail;
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 100.0,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Expanded(
                                    child: Image.network(imageURL),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      product.title,
                                      style: TextStyle(
                                          fontFamily: 'Lancer',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5.0),
                                      child: Text(
                                      product.price.currentPrice
                                          .toString()
                                          .padRight(8, '0')
                                          .padLeft(9, 'Rs '),
                                      style: TextStyle(
                                          fontFamily: 'Lancer',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Icon(
                                            Icons.star,
                                            size: 15.0,
                                            color: Colors.teal,
                                          ),
                                        ),
                                        Text(
                                          product.reviews.rating.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Lancer',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 50),
                                          child: Icon(
                                            Icons.rate_review,
                                            size: 15.0,
                                            color: Colors.teal,
                                          ),
                                        ),
                                        Text(
                                          product.reviews.totalReviews.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Lancer',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      print(snapshot.data);
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// body: SingleChildScrollView(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Row(
// children: <Widget>[
// FlatButton(
// child: Container(
// margin: EdgeInsets.all(20.0),
// width: 150,
// height: 150,
// color: Colors.white,
// child: Column(
// children: <Widget>[
// Expanded(
// child: Image(
// image: AssetImage('images/iPhone8.png'),
// ),
// ),
// Text(
// 'Iphone 8',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// ),
// Text(
// 'Price: 60,000 rs',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// )
// ],
// ),
// ),
// onPressed: (){},
// ),
// FlatButton(
// child: Container(
// width: 150,
// height: 150,
// color: Colors.white,
// child: Column(
// children: <Widget>[
// Expanded(
// child: Image(
// image: AssetImage('images/iPhone-x-png.png'),
// ),
// ),
// Text(
// 'Iphone 12 Pro',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// ),
// Text(
// 'Price: 1,00,000 rs',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// )
// ],
// ),
// ),
// onPressed: (){},
// ),
// ],
// ),
// Row(children: <Widget>[
// FlatButton(
// child: Container(
// margin: EdgeInsets.all(20.0),
// width: 150,
// height: 150,
// color: Colors.white,
// child: Column(
// children: <Widget>[
// Expanded(
// child: Image(
// image: AssetImage('images/iPhone12.png'),
// ),
// ),
// Text(
// 'Iphone 12',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// ),
// Text(
// 'Price: 1,20,000 rs',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// )
// ],
// ),
// ),
// onPressed: (){},
// ),
// FlatButton(
// child: Container(
// width: 150,
// height: 150,
// color: Colors.white,
// child: Column(
// children: <Widget>[
// Expanded(
// child: Image(
// image:
// AssetImage('images/samsung-galaxy-s10-plus.png'),
// ),
// ),
// Text(
// 'Samsung Galaxy S20',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// ),
// Text(
// 'Price: 90,000 rs',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// )
// ],
// ),
// ),
// onPressed: (){},
// ),
// ]),
// Row(children: <Widget>[
// FlatButton(
// child: Container(
// margin: EdgeInsets.all(20.0),
// width: 150,
// height: 150,
// color: Colors.white,
// child: Column(
// children: <Widget>[
// Expanded(
// child: Image(
// image: AssetImage('images/samsungS20.png'),
// ),
// ),
// Text(
// 'Samsung Galaxy S20',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// ),
// Text(
// 'Price: 75,000 rs',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// )
// ],
// ),
// ),
// onPressed: (){},
// ),
// FlatButton(
// child: Container(
// width: 150,
// height: 150,
// color: Colors.white,
// child: Column(
// children: <Widget>[
// Expanded(
// child: Image(
// image: AssetImage('images/boat head.png'),
// ),
// ),
// Text(
// 'Boat Rockers',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// ),
// Text(
// 'Price: 2500 rs',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// fontWeight: FontWeight.bold),
// )
// ],
// ),
// ),
// onPressed: (){},
// ),
// ]),
// ],
//),
// ),
