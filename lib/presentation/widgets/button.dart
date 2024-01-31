import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

import '../search_field_screen.dart';

class LikeButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const LikeButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: const Text('Like'),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        context: context,
        bodyBuilder: (context) => const SerachFieldScreen(),
        width: 500,
        height: 150,
      ),
      child: const Icon(Icons.search),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        context: context,
        bodyBuilder: (context) => const SerachFieldScreen(),
        width: 500,
        height: 150,
      ),
      child: const Icon(Icons.search),
    );
  }
}
