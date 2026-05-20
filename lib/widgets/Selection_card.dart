import 'package:flutter/material.dart';
import '../models/country.dart';

class SelectionCard extends StatelessWidget {
  final Country country;

  const SelectionCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),

      color: const Color.fromARGB(255, 201, 232, 202),
      child: Text('Selected country: ${country.name}'),
    );
  }
}
