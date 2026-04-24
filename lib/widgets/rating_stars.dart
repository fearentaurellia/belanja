import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, size: 16, color: Colors.orange),
        const SizedBox(width: 4),
        Text(rating.toString(),
            style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}