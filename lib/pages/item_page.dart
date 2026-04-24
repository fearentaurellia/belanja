import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HERO IMAGE
            Hero(
              tag: item.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(item.image),
              ),
            ),

            const SizedBox(height: 16),

            Text(
              item.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "Rp ${item.price}",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 8),
            Text("Rating: ⭐ ${item.rating}"),
            const SizedBox(height: 8),
            Text("Stok: ${item.stock}"),
          ],
        ),
      ),
    );
  }
}