import 'package:flutter/material.dart';

class SingleMovieButton extends StatelessWidget{
  const SingleMovieButton({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },

    );
  }
  
}
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


