class ProductItemModel {
  final String id;
  final String imagePath;
  final String title;
  String discountInfo;
  int discountType;
  final double price;
  double priceDiscount;
  int quantity;
  bool promotion;

  ProductItemModel({
    required this.id,
    required this.imagePath,
    required this.title,
    required this.discountInfo,
    required this.discountType,
    required this.price,
    required this.priceDiscount,
    required this.quantity,
    required this.promotion,
  });

  factory ProductItemModel.fromJson(Map<String, dynamic> json) {
    return ProductItemModel(
      id: json['id'],
      imagePath: json['imagePath'],
      title: json['title'],
      discountInfo: json['discountInfo'],
      discountType: json['discountType'],
      price: json['price'].toDouble(),
      priceDiscount: json['priceDiscount'].toDouble(),
      quantity: json['quantity'],
      promotion: json['promotion'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imagePath': imagePath,
      'title': title,
      'discountInfo': discountInfo,
      'discountType': discountType,
      'price': price,
      'priceDiscount': priceDiscount,
      'quantity': quantity,
      'promotion': promotion
    };
  }
}
