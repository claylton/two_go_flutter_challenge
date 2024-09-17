// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:two_go_flutter_challenge/blocs/cart_bloc.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';


class CartItemWidget extends StatelessWidget {
  final ProductItemModel item;

  const CartItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final CartBloc bloc = Provider.of<CartBloc>(context);
    final NumberFormat price = NumberFormat("#,##0.00", "pt_BR");

    return Container(
      // height: 160,
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(10),
            child: Image.network(item.imagePath, fit: BoxFit.fitWidth),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title),
                  Text(
                    item.promotion ? "Promoção aplicada" : "R\$ ${price.format(item.price)}",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(height: 10),
                  Text("R\$ ${price.format(item.price * item.quantity)}"),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          child: TextButton(
                            child: const Text("-"),
                            onPressed: () => bloc.decrease(item),
                          ),
                        ),
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          child: Text(item.quantity.toString()),
                        ),
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          child: TextButton(
                            child: const Text("+"),
                            onPressed: () => bloc.increase(item),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
