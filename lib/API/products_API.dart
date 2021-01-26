import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vodqaapp/Models/ProductsInfo.dart';

class API_Manger {
  Future<ProductModel> getProductsAPI() async {
    var client = http.Client();
    var productsModel;

     // var response = await client.get("http://newsapi.org/v2/everything?q=bitcoin&from=2020-12-25&sortBy=publishedAt&apiKey=a2e6db6a05b54280bfed30a54af2f50f");

      var response = await client.get("https://amazon-product-reviews-keywords.p.rapidapi.com/product/search?keyword=iphone&country=IN&category=aps",headers: {
        "x-rapidapi-key": "fa52431f82msh324b7ccbd77888fp13d7c2jsn0c6a1bcedaa6",
        "x-rapidapi-host": "amazon-product-reviews-keywords.p.rapidapi.com",

      });
      if(response.statusCode == 200) {
        print(response.statusCode);
        var JsonString = response.body;
        var JsonObject = jsonDecode(JsonString);
        print(JsonObject);
        try {
          productsModel = ProductModel.fromJson(JsonObject);
        // productsModel =  JsonObject.map((job) => new ProductsModel.fromJson(job)).toList();
        }catch(Exception){
            print(Exception);
            print("Exception Occured");
        }
      print(response.statusCode);
     }else{
        print('there is some error');
      }
      print(productsModel);
    return productsModel;
  }
}
