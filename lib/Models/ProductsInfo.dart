// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.nextPage,
    this.totalProducts,
    this.category,
    this.products,
  });

  int nextPage;
  String totalProducts;
  String category;
  List<Product> products;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    nextPage: json["next_page"],
    totalProducts: json["totalProducts"],
    category: json["category"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "next_page": nextPage,
    "totalProducts": totalProducts,
    "category": category,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Product {
  Product({
    this.position,
    this.asin,
    this.price,
    this.reviews,
    this.url,
    this.score,
    this.sponsored,
    this.amazonChoice,
    this.bestSeller,
    this.amazonPrime,
    this.title,
    this.thumbnail,
  });

  Position position;
  String asin;
  Price price;
  Reviews reviews;
  String url;
  String score;
  bool sponsored;
  bool amazonChoice;
  bool bestSeller;
  bool amazonPrime;
  String title;
  String thumbnail;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    position: Position.fromJson(json["position"]),
    asin: json["asin"],
    price: Price.fromJson(json["price"]),
    reviews: Reviews.fromJson(json["reviews"]),
    url: json["url"],
    score: json["score"],
    sponsored: json["sponsored"],
    amazonChoice: json["amazonChoice"],
    bestSeller: json["bestSeller"],
    amazonPrime: json["amazonPrime"],
    title: json["title"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "position": position.toJson(),
    "asin": asin,
    "price": price.toJson(),
    "reviews": reviews.toJson(),
    "url": url,
    "score": score,
    "sponsored": sponsored,
    "amazonChoice": amazonChoice,
    "bestSeller": bestSeller,
    "amazonPrime": amazonPrime,
    "title": title,
    "thumbnail": thumbnail,
  };
}

class Position {
  Position({
    this.page,
    this.position,
    this.globalPosition,
  });

  int page;
  int position;
  int globalPosition;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
    page: json["page"],
    position: json["position"],
    globalPosition: json["global_position"],
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "position": position,
    "global_position": globalPosition,
  };
}

class Price {
  Price({
    this.discounted,
    this.currentPrice,
    this.currency,
    this.beforePrice,
    this.savingsAmount,
    this.savingsPercent,
  });

  bool discounted;
  double currentPrice;
  Currency currency;
  double beforePrice;
  double savingsAmount;
  double savingsPercent;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    discounted: json["discounted"],
    currentPrice: json["current_price"].toDouble(),
    currency: currencyValues.map[json["currency"]],
    beforePrice: json["before_price"].toDouble(),
    savingsAmount: json["savings_amount"].toDouble(),
    savingsPercent: json["savings_percent"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "discounted": discounted,
    "current_price": currentPrice,
    "currency": currencyValues.reverse[currency],
    "before_price": beforePrice,
    "savings_amount": savingsAmount,
    "savings_percent": savingsPercent,
  };
}

enum Currency { USD }

final currencyValues = EnumValues({
  "USD": Currency.USD,
});

class Reviews {
  Reviews({
    this.totalReviews,
    this.rating,
  });

  int totalReviews;
  double rating;

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
    totalReviews: json["total_reviews"],
    rating: json["rating"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "total_reviews": totalReviews,
    "rating": rating,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
