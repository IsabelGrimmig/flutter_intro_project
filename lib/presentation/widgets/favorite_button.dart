import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.onPressedToFa});
  final VoidCallback onPressedToFa;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedToFa,
      child: const Icon(
        Icons.favorite,
        color: Color(
          0xFFFF5252,
        ),
        size: 32,
      ),
    );
  }
}
