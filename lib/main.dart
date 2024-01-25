import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'dependencies/dependencies.dart';
import 'presentation/root_screen.dart';

final getIt = GetIt.instance;
void main() async {
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
        appBarTheme: const AppBarTheme(foregroundColor: Colors.white),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      home: const RootScreen(),
    );
  }
}
