import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = const [
      Item(
        name: "Salt",
        price: 5000,
        image: "assets/images/salt.jpg",
        stock: 25,
        rating: 4.2,
      ),
      Item(
        name: "Sugar",
        price: 12000,
        image: "assets/images/sugar.jpg",
        stock: 40,
        rating: 4.6,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Marketplace"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final item = items[index];

          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 📷 Gambar produk
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    item.image,
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 8),

                // 🧂 Nama
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                // 💰 Harga
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Rp ${item.price}",
                    style: const TextStyle(color: Colors.green),
                  ),
                ),

                // ⭐ Rating
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      const Icon(Icons.star,
                          size: 16, color: Colors.orange),
                      const SizedBox(width: 4),
                      Text("${item.rating}"),
                    ],
                  ),
                ),

                // 📦 Stok
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Stok: ${item.stock}"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}