import 'package:flutter/material.dart';

class AddToCartWidget extends StatelessWidget {
  // final ProductItemModel item;

  const AddToCartWidget({
    Key? key,
    // required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final bloc = Provider.of<CartBloc>(context);
    // CartItemModel cartItem = CartItemModel(
    //   id: item.id,
    //   title: item.title,
    //   quantity: 1,
    //   price: item.price,
    //   image: item.image,
    // );

    // if (!bloc.itemInCart(cartItem)) {
    return GestureDetector(
      onTap: () {
        // bloc.add(cartItem);
        // final snackBar = SnackBar(
        //   content: Text('${item.title} adicionado'),
        //   duration: const Duration(seconds: 1),
        // );
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        width: 50,
        height: 32,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Icon(Icons.add_shopping_cart, color: Colors.white),
      ),
    );
    // } else {
    //   return GestureDetector(
    //     onTap: () {
    //       bloc.remove(cartItem);
    //       final snackBar = SnackBar(
    //         content: Text('${item.title} removido'),
    //         duration: const Duration(seconds: 1),
    //       );
    //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //     },
    //     child: Container(
    //       width: 80,
    //       height: 40,
    //       color: Colors.red,
    //       child: const Icon(Icons.remove_shopping_cart, color: Colors.white),
    //     ),
    //   );
    // }
  }
}
