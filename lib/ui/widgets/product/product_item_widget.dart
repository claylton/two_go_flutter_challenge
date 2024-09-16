import 'package:flutter/material.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';
import 'package:intl/intl.dart';
import 'package:two_go_flutter_challenge/ui/widgets/shared/add_to_cart_widget.dart';

class ProductItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  const ProductItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final priceFormat = NumberFormat('#,##0.00', 'pt_BR');

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){},
            child: Hero(
              tag: image,
              child: Image.asset(
                image,
                width: 170,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 30,
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "R\$ ${priceFormat.format(price)}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColorsTheme.primaryColor,
                  ),
                ),
              ),
              const AddToCartWidget()
            ],
          ),
        ],
      ),
    );
  }
}
