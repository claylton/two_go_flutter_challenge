import 'package:flutter/material.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';
import 'package:intl/intl.dart';
import 'package:two_go_flutter_challenge/ui/widgets/shared/add_to_cart_widget.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductItemModel item;
  const ProductItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final priceFormat = NumberFormat('#,##0.00', 'pt_BR');

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      // width: 170,
      height: 10,
      width: MediaQuery.of(context).size.width * 0.35,
      color: Colors.black12,
      child: SizedBox(
        height: 10,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.network(
                    item.imagePath,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 30,
                  child: Text(
                    item.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "R\$ ${priceFormat.format(item.price)}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColorsTheme.primaryColor,
                          ),
                        ),
                      ),
                      AddToCartWidget(item: item)
                    ],
                  ),
                ),
                Text(
                  item.discountInfo,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
