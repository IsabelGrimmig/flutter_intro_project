import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../root_screen.dart';
import 'home_view_model.dart';
//import 'home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        
        appBar: AppBar(
          title: const Text('Monta movie'),
          // Her kan der tilføjes yderligere appbar-konfiguration, f.eks. handlinger (actions).
      
        ),
        body: Consumer<HomeViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.state.movies != null){
              return Column(
                children: [...viewModel.state.movies!.map((movie) => Text(movie.title))],
              );
            } else {
              return const SizedBox.shrink();
            }
            
          },
        ),
        
        ),
    );
  }
}
