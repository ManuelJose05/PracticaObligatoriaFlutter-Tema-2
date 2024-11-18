import 'package:flutter/material.dart';
import 'package:practica_obligatoria_t2/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STARS WARS',
      home: HomeScreen(),
    );
  }
}