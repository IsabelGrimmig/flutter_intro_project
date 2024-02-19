import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

import '../search_field_screen.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => showPopover(
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
      onTap: () async => showPopover(
        context: context,
        bodyBuilder: (context) => const BackButton(),
        width: 500,
        height: 150,
      ),
      child: const Icon(Icons.search),
    );
  }
}
