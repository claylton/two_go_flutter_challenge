import 'package:flutter/material.dart';
import 'package:two_go_flutter_challenge/ui/pages/cart_page.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';
import 'home_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          const HomePage(),
          const CartPage(),
          Container(color: Colors.blue),
        ],
      ),
      bottomNavigationBar: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.shopping_cart)),
          Tab(icon: Icon(Icons.perm_identity)),
        ],
        labelColor: AppColorsTheme.primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: AppColorsTheme.primaryColor,
      ),
    );
  }
}
