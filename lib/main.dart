import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_go_flutter_challenge/blocs/cart_bloc.dart';
import 'package:two_go_flutter_challenge/blocs/home_bloc.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_theme.dart';
import 'ui/pages/tabs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeBloc>.value(value: HomeBloc()),
        ChangeNotifierProvider<CartBloc>.value(value: CartBloc()),
      ],
      child: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2 GO Challenge',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: '/',
      routes: {
        '/': (_) => const DefaultTabController(
              length: 3,
              child: TabsPage(),
            ),
      },
    );
  }
}
