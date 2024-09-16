
import 'package:two_go_flutter_challenge/model/product_model.dart';
import 'package:two_go_flutter_challenge/services/mocks/mock_products.dart';

class ProductRepository {

  Future<List<ProductItemModel>> get getAll async {
    Map<String, dynamic> response = ProductsMock.json();
    await Future.delayed(const Duration(seconds: 1));
    return (response['data'] as List)
      .map((course) => ProductItemModel.fromJson(course))
      .toList();
  }
}