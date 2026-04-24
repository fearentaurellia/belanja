import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'models/item.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

final List<Item> items = [
  const Item(
    name: "Salt",
    price: 5000,
    image: "images/salt.jpg",
    stock: 25,
    rating: 4.2,
  ),
  const Item(
    name: "Sugar",
    price: 12000,
    image: "images/sugar.jpg",
    stock: 40,
    rating: 4.6,
  ),
];

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(items: items),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final item = state.extra as Item;
        return ItemPage(item: item);
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Mini Marketplace',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      routerConfig: _router,
    );
  }
}