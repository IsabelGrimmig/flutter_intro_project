import 'package:flutter/material.dart';
import '../bottom_navigation_bar.dart';


class FavoriteViewModel extends StatelessWidget {
  const FavoriteViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BottomNavigationBarApp(),
      ],
    );
  }
}
