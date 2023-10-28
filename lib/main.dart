import 'package:cleanarcp2/core/services/service_locator.dart';
import 'package:cleanarcp2/movies/presintaion/screens/movies_screen.dart';
import 'package:flutter/material.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: ThemeData(),
      home: const MoviesScreen(),
    );
  }
}
