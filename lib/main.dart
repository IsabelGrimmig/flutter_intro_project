import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'data/sources/movie_api.dart';
import 'dependencies/dependencies.dart';
import 'presentation/root_screen.dart';
import 'presentation/home/home_screen.dart';
import 'presentation/home/home_view_model.dart';

final getIt = GetIt.instance;
void main() async{
  await dotenv.load(fileName: '.env');
  registerDataDependencies();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Intro App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        ),
        home: const RootScreen(),
      );
  }
}