import 'package:flutter/material.dart';

class StockBadge extends StatelessWidget {
  final int stock;
  const StockBadge({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    final bool low = stock <= 5;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: low ? Colors.red.shade100 : Colors.green.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "Stok: $stock",
        style: TextStyle(
          color: low ? Colors.red : Colors.green,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}