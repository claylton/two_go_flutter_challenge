// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:two_go_flutter_challenge/blocs/cart_bloc.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';

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
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.width * 0.4,
            margin: const EdgeInsets.all(10),
            child: Image.network(
              item.imagePath,
              fit: BoxFit.cover,
            ),
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
                  item.promotion
                      ? Row(
                          children: [
                            Text(
                              "R\$ ${price.format(item.price * item.quantity)}",
                              maxLines: 1,
                              style: const TextStyle(
                                color: AppColorsTheme.greyColor,
                                fontSize: 14,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: AppColorsTheme.greyColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "R\$ ${price.format(item.priceDiscount)}",
                              style: const TextStyle(color: AppColorsTheme.primaryColor),
                            ),
                          ],
                        )
                      : Text(
                          "R\$ ${price.format(item.price * item.quantity)}",
                          style: const TextStyle(color: AppColorsTheme.blackColor),
                        ),
                  item.promotion
                      ? const Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Promoção aplicada",
                            style: TextStyle(color: AppColorsTheme.primaryColor),
                          ),
                        )
                      : const SizedBox(),
                  Container(
                    // height: 35,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            child: const Text("-"),
                            onPressed: () => bloc.decrease(item),
                          ),
                        ),
                        Text(item.quantity.toString()),
                        Expanded(
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
