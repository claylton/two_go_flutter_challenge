import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_go_flutter_challenge/blocs/home_bloc.dart';
import 'package:two_go_flutter_challenge/ui/widgets/product/product_list_widget.dart';
import 'package:two_go_flutter_challenge/widgets/category/category_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
             Text(
              "Categories",
              style: Theme.of(context).textTheme.headlineMedium
            ),
            const SizedBox(
              height: 90,
              child: CategoryListWidget(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextButton(onPressed: () {}, child: const Text("See All"))
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 350,
              child: ProductListWidget(products: bloc.products),
            )
          ],
        ),
      ),
    );
  }
}