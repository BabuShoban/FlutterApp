class Contents {
  String image;
  String title;
  String discription;

  Contents({this.image, this.title, this.discription});
}

List<Contents> contents = [
  Contents(
      title: 'Welcome to VodQA Shop',
      image: 'images/online_marketting.png',

  ),
  Contents(
      title: 'Faster Delivery',
      image: 'images/fasterDelivery1.jpg',

  ),
  Contents(
      title: 'Get more Rewards',
      image: 'images/e-commerce.png',

  ),
];