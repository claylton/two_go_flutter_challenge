import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_go_flutter_challenge/blocs/cart_bloc.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';

class AddToCartWidget extends StatelessWidget {
  final ProductItemModel item;

  const AddToCartWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<CartBloc>(context);
    ProductItemModel cartItem = ProductItemModel(
      id: item.id,
      title: item.title,
      quantity: 1,
      price: item.price,
      priceDiscount: item.priceDiscount,
      imagePath: item.imagePath,
      discountInfo: item.discountInfo,
      discountType: item.discountType,
      promotion: false
    );

    if (!bloc.itemInCart(cartItem)) {
      return GestureDetector(
        onTap: () {
          bloc.add(cartItem);
          final snackBar = SnackBar(
            content: Text('${item.title} adicionado'),
            duration: const Duration(seconds: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.width * 0.08,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(Icons.add_shopping_cart, color: Colors.white),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          bloc.remove(cartItem);
          final snackBar = SnackBar(
            content: Text('${item.title} removido'),
            duration: const Duration(seconds: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.width * 0.08,
          color: Colors.red,
          child: const Icon(Icons.remove_shopping_cart, color: Colors.white),
        ),
      );
    }
  }
}
