import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: productList(context),
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TOTAL",
                      ),
                      Text(
                        "\$4250",
                        style: TextStyle(
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
}

Widget productList(BuildContext context) {
  return ListView(children: [
    productItem(context),
    productItem(context),
    productItem(context),
  ]);
}

Widget productItem(BuildContext context) {
  final priceFormat = NumberFormat('#,##0.00', 'pt_BR');

  return Container(
    height: 120,
    margin: const EdgeInsets.all(5),
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          margin:const  EdgeInsets.all(10),
          child: Image.asset(
            "assets/product-1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Título do produto"),
              Text(
                "R\$ ${priceFormat.format(200)}",
                style: const TextStyle(
                  color: AppColorsTheme.primaryColor,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("-", textAlign: TextAlign.center),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: const Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("+", textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
