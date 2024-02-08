import 'package:flutter/material.dart';
import '../root_screen.dart';

class FavoriteViewModel extends StatelessWidget {
  const FavoriteViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RootScreen(),
      ],
    );
  }
}
