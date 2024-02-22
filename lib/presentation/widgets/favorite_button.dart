import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.onPressedToAdd,
    required this.onPressedToRemove,
    this.isInitiallyFavorite = false,
  });
  final VoidCallback onPressedToAdd;
  final VoidCallback onPressedToRemove;
  final bool isInitiallyFavorite;

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isInitiallyFavorite;
  }

  void toggleFavorite() {
    print('før isFavorite');
    setState(
      () {
        isFavorite = !isFavorite;
      },
    );
    print('efter is favorite');
    if (isFavorite) {
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
        textStyle: const TextStyle(fontSize: 12),
      ),
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
      onPressed: toggleFavorite,
      label: Text(isFavorite ? 'Remove from favorites' : 'Add to favorites'),
    );
  }
}
