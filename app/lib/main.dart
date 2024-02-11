import 'package:app/routes/home.dart';
import 'package:app/stores/my_titles_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt get getIt => GetIt.instance;

void main() {
  getIt.registerLazySingleton<MyTitlesStore>(() => MyTitlesStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watchtracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
