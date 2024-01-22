import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          toolbarHeight: 80,
          backgroundColor: Color(0xFFE9265E),
          title: const Text('Monta movie')
      
        ),
        body: Consumer<HomeViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.state.movies != null){
              return Column(
                children: [...viewModel.state.movies!.map((movie) => Text(movie.title?? '')),
                ],

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
