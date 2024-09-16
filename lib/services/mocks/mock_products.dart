abstract class ProductsMock {
  static Map<String, dynamic> json() {
    return {
      'code': '200',
      'message': 'success',
      'data': [
        {
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-10.png",
          "title": "Item A",
          "price": 50.00,
        },
        {
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-1.png",
          "title": "Item B",
          "price": 75.00,
        },
        {
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-2.png",
          "title": "Item C",
          "price": 25.00,
        },
        {
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-4.png",
          "title": "Item D",
          "price": 150.00,
        },
        {
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-5.png",
          "title": "Item E",
          "price": 200.00,
        },
      ],
    };
  }
}
