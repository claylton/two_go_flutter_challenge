import 'package:flutter/material.dart';
import 'package:two_go_flutter_challenge/model/product_model.dart';
import 'package:two_go_flutter_challenge/ui/widgets/shared/loader_widget.dart';
import 'product_item_widget.dart';

class ProductListWidget extends StatelessWidget {
  final List<ProductItemModel>? products;

  const ProductListWidget({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 410,
      child: LoaderWidget(
        object: products,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products?.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: ProductItemWidget(
            item: products![index],
          ),
        );
      },
    );
  }
}