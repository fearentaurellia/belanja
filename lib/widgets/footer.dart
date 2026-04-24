import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      child: const Text(
        "Fearent Aurellia Permata Sari - 244107020014",
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
    );
  }
}