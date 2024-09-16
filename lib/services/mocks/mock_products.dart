abstract class ProductsMock {
  static Map<String, dynamic> json() {
    return {
      'code': '200',
      'message': 'success',
      'data': [
        {
          "id": "1",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-10.png",
          "title": "Item A",
          "discountInfo": "",
          "discountType": 0,
          "price": 50.00,
          "quantity": 0
        },
        {
          "id": "2",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-1.png",
          "title": "Item B",
          "discountInfo": "2 por R\$1,25",
          "discountType": 1,
          "price": 75.00,
          "quantity": 0
        },
        {
          "id": "3",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-2.png",
          "title": "Item C",
          "discountInfo": "Compre 3, leve um grátis",
          "discountType": 2,
          "price": 25.00,
          "quantity": 0
        },
        {
          "id": "4",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-4.png",
          "title": "Item D",
          "discountInfo": "Compre D e E por R\$ 3",
          "discountType": 3,
          "price": 150.00,
          "quantity": 0
        },
        {
          "id": "5",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-5.png",
          "title": "Item E",
          "discountInfo": "Compre D e E por R\$ 3",
          "discountType": 4,
          "price": 200.00,
          "quantity": 0
        },
      ],
    };
  }
}
