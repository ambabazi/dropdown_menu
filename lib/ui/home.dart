import 'package:flutter/material.dart';
import '../models/country.dart';
import '../widgets/Country_dropdown.dart';
import '../widgets/Selection_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Holds the country the user has chosen. null = nothing selected yet.
  Country? _selectedCountry;

  void _onCountrySelected(Country? country) {
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Selection'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select your country',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 10),

            // The DropdownMenu widget
            CountryDropdown(
              selectedCountry: _selectedCountry,
              onSelected: _onCountrySelected,
            ),

            const SizedBox(height: 24),

            // Confirmation card — only shown after a country is picked
            if (_selectedCountry != null)
              SelectionCard(country: _selectedCountry!)
            else
              Text(
                'No country selected yet.',
                style: TextStyle(color: Colors.grey.shade500),
              ),
          ],
        ),
      ),
    );
  }
}
