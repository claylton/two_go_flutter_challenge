abstract class ProductsMock {
  static Map<String, dynamic> json() {
    return {
      'code': '200',
      'message': 'success',
      'data': [
        {
          "id": "A",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-10.png",
          "title": "Item A",
          "discountInfo": "",
          "discountType": 0,
          "price": 50.00,
          "priceDiscount": 0,
          "quantity": 0,
          "promotion": false
        },
        {
          "id": "B",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-1.png",
          "title": "Item B",
          "discountInfo": "2 por R\$1,25",
          "discountType": 1,
          "price": 75.00,
          "priceDiscount": 0,
          "quantity": 0,
          "promotion": false
        },
        {
          "id": "C",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-2.png",
          "title": "Item C",
          "discountInfo": "Compre 3, leve um grátis",
          "discountType": 2,
          "price": 25.00,
          "priceDiscount": 0,
          "quantity": 0,
          "promotion": false
        },
        {
          "id": "D",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-4.png",
          "title": "Item D",
          "discountInfo": "Compre D e E por R\$ 3",
          "discountType": 3,
          "price": 150.00,
          "priceDiscount": 0,
          "quantity": 0,
          "promotion": false
        },
        {
          "id": "E",
          "imagePath": "https://raw.githubusercontent.com/claylton/two_go_flutter_challenge/main/assets/product-5.png",
          "title": "Item E",
          "discountInfo": "Compre D e E por R\$ 3",
          "discountType": 4,
          "price": 200.00,
          "priceDiscount": 0,
          "quantity": 0,
          "promotion": false
        },
      ],
    };
  }
}
