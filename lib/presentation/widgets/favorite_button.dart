import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton(
      {super.key, required this.onPressed, required this.isMovieLiked});
  final VoidCallback onPressed;
  final bool isMovieLiked;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFFE9265E),
        textStyle: const TextStyle(fontSize: 20),
      ),
      icon: Icon(isMovieLiked ? Icons.favorite : Icons.favorite_border),
      onPressed: onPressed,
      label: Text(isMovieLiked ? 'Remove from favorites' : 'Add to favorites'),
    );
  }
}
