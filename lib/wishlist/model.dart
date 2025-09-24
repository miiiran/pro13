class ProductModel
{
  late final String image,title;
  late final double rate,price;
  late final bool isFav;

  ProductModel({
    required this.image,
    required this.title,
    required this.rate,
    required this.price,
    required this.isFav,
  });

}


final fakeProducts=[
  ProductModel(image: "assets/images/rectangle 34.png", title: "Business", rate: 4.9, price: 100, isFav: true),
  ProductModel(image: "assets/images/rectangle 35.png", title: "Wedding", rate: 3.3, price: 250, isFav: true),
  ProductModel(image: "assets/images/rectangle 36.png", title: "Tuxedo", rate: 5.1, price: 300, isFav: true),
  ProductModel(image: "assets/images/rectangle 37.png", title: "Classic Fit", rate: 9.9, price: 500, isFav: true),
  ProductModel(image: "assets/images/rectangle 38.png", title: "Dinner", rate: 9.8, price: 400, isFav: false),
  ProductModel(image: "assets/images/rectangle 39.png", title: "Casual", rate: 1.1, price: 330, isFav: true),
  ProductModel(image: "assets/images/rectangle 39.png", title: "Casual", rate: 1.1, price: 330, isFav: true),
  ProductModel(image: "assets/images/rectangle 39.png", title: "Casual", rate: 1.1, price: 330, isFav: true),
  ProductModel(image: "assets/images/rectangle 39.png", title: "Casual", rate: 1.1, price: 330, isFav: true),
  ProductModel(image: "assets/images/rectangle 39.png", title: "Casual", rate: 1.1, price: 330, isFav: true),
];