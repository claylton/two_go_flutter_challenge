import 'package:flutter/widgets.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';
import 'package:two_go_flutter_challenge/services/repositories/product_repository.dart';

class HomeBloc extends ChangeNotifier {
  final ProductRepository productRepository = ProductRepository();

  List<ProductItemModel>? products;

  HomeBloc() {
    getProducts;
  }

  get getProducts {
    return productRepository.getAll.then((data) {
      products = data;
    }).then((_) {
      notifyListeners();
    });
  }
}
