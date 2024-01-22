import 'package:flutter/material.dart';
// ignore: unused_import
import 'favorites_view_model.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('Favorites'),
        backgroundColor: Color(0xFFFFA8A0),
      ),
      body: ListView(
        children: const [Text('Dine favoritter')],
      ),
    );
  }
}
