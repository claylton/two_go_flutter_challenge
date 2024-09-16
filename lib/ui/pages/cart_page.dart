import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:two_go_flutter_challenge/blocs/cart_bloc.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';
import 'package:two_go_flutter_challenge/ui/widgets/shared/cart_item_widget.dart';
import 'package:two_go_flutter_challenge/ui/widgets/shared/loader_widget.dart';

// ignore: must_be_immutable
class CartPage extends StatelessWidget {
  late CartBloc bloc;
  final price = NumberFormat("#,##0.00", "pt_BR");
  List<ProductItemModel> items = <ProductItemModel>[];

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    bloc = Provider.of<CartBloc>(context);
    items = bloc.cart;
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: LoaderWidget(
              object: bloc.cart,
              callback: cartItemList,
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "TOTAL",
                      ),
                      Text(
                        "R\$ ${price.format(bloc.total)}",
                        style: const TextStyle(
                          color: AppColorsTheme.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(color: AppColorsTheme.primaryColor, borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.only(right: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Checkout",
                        style: TextStyle(
                          color: AppColorsTheme.whiteColor,
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cartItemList() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(items[index].id),
          onDismissed: (direction) => bloc.remove(items[index]),
          background: Container(color: Colors.red.withOpacity(0.1)),
          child: CartItemWidget(item: items[index]),
        );
      },
    );
  }
}