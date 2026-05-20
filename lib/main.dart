// main.dart
// Entry point of the app.

import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() {
  runApp(const CountrySelection());
}

class CountrySelection extends StatelessWidget {
  const CountrySelection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Selection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: const HomeScreen(),
    );
  }
}
