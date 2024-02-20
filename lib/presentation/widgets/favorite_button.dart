import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.onPressedToFa});
  final VoidCallback onPressedToFa;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFFE9265E),
        textStyle: const TextStyle(fontSize: 12),
      ),
      icon: const Icon(Icons.favorite),
      onPressed: onPressedToFa,
      label: const Text('Add to favorites'),
    );
  }
}
