import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'data/repositories/local_storage.dart';
import 'dependencies/dependencies.dart';
import 'presentation/root_screen.dart';
import 'presentation/widgets/theme/theme.dart';

final getIt = GetIt.instance;
void main() async {
  await dotenv.load(fileName: '.env');
  registerDataDependencies();
  await getIt<LocalStorage>().initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M O N T A Movie',
      theme: lightMode,
      darkTheme: darkMode,
      home: const RootScreen(),
    );
  }
}
