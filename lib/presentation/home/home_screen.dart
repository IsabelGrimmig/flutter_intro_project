import 'package:flutter/material.dart';
// ignore: unused_import
import 'home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monta movie'),
        // Her kan der tilføjes yderligere appbar-konfiguration, f.eks. handlinger (actions).

      ),
      body: const Row(
        children: [
        // Her kan tilføjes andre widgets, der skal vises på hjemmeskærmen.
        ],
      ),
    );
  }
}
