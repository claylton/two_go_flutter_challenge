import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_go_flutter_challenge/blocs/cart_bloc.dart';
import 'package:two_go_flutter_challenge/ui/pages/cart_page.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';
import 'home_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
  final CartBloc bloc = Provider.of<CartBloc>(context);

    return Scaffold(
      body: TabBarView(
        children: [
          const HomePage(),
          CartPage(),
          Container(color: Colors.blue),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          const Tab(icon: Icon(Icons.home)),
          Tab(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.shopping_cart),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text(
                      bloc.cart.length.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                )
              ],
            ),
          ),
          const Tab(icon: Icon(Icons.perm_identity)),
        ],
        labelColor: AppColorsTheme.primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: const EdgeInsets.all(5),
        indicatorColor: AppColorsTheme.primaryColor,
      ),
    );
  }
}
