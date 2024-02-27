import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.onPressedToAdd,
    required this.onPressedToRemove,
    this.isInitiallyFavorite = false,
    required bool isMovieLiked,
  });
  final VoidCallback onPressedToAdd;
  final VoidCallback onPressedToRemove;
  final bool isInitiallyFavorite;

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  late bool isMovieLiked;

  @override
  void initState() {
    super.initState();
    isMovieLiked = widget.isInitiallyFavorite;
  }

  void toggleFavorite() {
    setState(
      () {
        isMovieLiked = !isMovieLiked;
      },
    );
    if (isMovieLiked) {
      widget.onPressedToAdd();
    } else {
      widget.onPressedToRemove();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFFE9265E),
        textStyle: const TextStyle(fontSize: 20),
      ),
      icon: Icon(isMovieLiked ? Icons.favorite : Icons.favorite_border),
      onPressed: toggleFavorite,
      label: Text(isMovieLiked ? 'Remove from favorites' : 'Add to favorites'),
    );
  }
}
