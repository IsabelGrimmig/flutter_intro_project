import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/button.dart';
import '../widgets/horizontal_list_view.dart';
import 'home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            SizedBox(
              width: 50,
              child: SearchButton()),
            
          ],
          
          toolbarHeight: 80,
          backgroundColor: const Color(0xFFE9265E),
          title: const Text('Monta movies'),
          

      
        ),
        
        body: Consumer<HomeViewModel>(
          builder: (context, viewModel, _) {
            return Column(
              children: [
                HorizontalListView(movies:viewModel.state.popularMovies?.results,),
                HorizontalListView(movies:viewModel.state.actionMovies?.results,)
                ],
            );
            
          },
        ),
        ),
    );
  }
}
