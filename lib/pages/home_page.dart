import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = const [
      Item(
        name: "Salt",
        price: 5000,
        image: "images/salt.jpg",
        stock: 25,
        rating: 4.2,
      ),
      Item(
        name: "Sugar",
        price: 12000,
        image: "images/sugar.jpg",
        stock: 40,
        rating: 4.6,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Mini Marketplace")),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: items.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return ItemCard(item: items[index]);
              },
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}