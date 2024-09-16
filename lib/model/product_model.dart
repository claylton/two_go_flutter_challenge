class ProductItemModel {
  final String imagePath;
  final String title;
  final double price;

  const ProductItemModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });

  factory ProductItemModel.fromJson(Map<String, dynamic> json) {
    return ProductItemModel(
      imagePath: json['imagePath'],
      title: json['title'],
      price: json['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imagePath': imagePath,
      'title': title,
      'price': price,
    };
  }
}
