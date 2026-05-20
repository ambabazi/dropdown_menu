import 'package:flutter/material.dart';
import '../models/country.dart';

class CountryDropdown extends StatelessWidget {
  final Country? selectedCountry;
  final ValueChanged<Country?> onSelected;

  const CountryDropdown({
    super.key,
    required this.selectedCountry,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<Country>(
      initialSelection: selectedCountry,

      enableFilter: true,

      requestFocusOnTap: true,

      menuHeight: 260,

      width: double.infinity,
      label: const Text('Choose Country'),
      hintText: 'Type to search…',

      dropdownMenuEntries: africanCountries.map((country) {
        return DropdownMenuEntry<Country>(value: country, label: country.name);
      }).toList(),

      onSelected: onSelected,
    );
  }
}
