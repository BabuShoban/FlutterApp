class Contents {
  String image;
  String title;
  String discription;

  Contents({this.image, this.title, this.discription});
}

List<Contents> contents = [
  Contents(
      title: 'Welcome to VodQA Shop',
      image: 'images/splash_1.png',
      discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "
  ),
  Contents(
      title: 'Faster Delivery',
      image: 'images/splash_2.png',
      discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "
  ),
  Contents(
      title: 'Reward surprises',
      image: 'images/splash_3.png',
      discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "
  ),
];