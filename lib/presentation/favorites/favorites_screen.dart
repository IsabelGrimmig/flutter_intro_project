import 'package:flutter/material.dart';
// ignore: unused_import
import 'favorites_view_model.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        // Her kan der tilføjes yderligere appbar-konfiguration, f.eks. handlinger (actions).
      ),
      body: ListView(
        // Her kan der tilføjes yderligere widgets til visning af favoritter.
      ),
    );
  }
}
