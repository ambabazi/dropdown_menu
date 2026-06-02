# dropdown_menu

A drop-down menu widget is a UI component that lets users choose one option from a hidden list that only appears when they tap or click on it.
Think of it like this:

. Before tapping → you see only the selected value (or a hint like “Select country”)
. After tapping → a list of options appears
. You pick one → the menu closes and shows your selection


## Getting Started

To run the app on you local PC

Requirements: Flutter SDK ≥ 3.7, Dart ≥ 3.x

bash
git clone https://github.com/ambabazi/dropdown_menu.git
cd dropdown_menu
flutter pub get
flutter run


# dropdown_menu Use Case scenario

When a user is selecting a country while filling a form or an application.

# Attributes Demonstrated

1. dropdownMenuEntries : This provides the list of countries inside the dropdown ( it is used to populate options)
2. onSelected : This detects when the user selects a country.
3. enablefilter: it is a search feature inside the dropdown it helps users to quickly find a country without having to scroll down. 

#### Official docs

https://api.flutter.dev/flutter/material/DropdownMenu-class.html

## Screenshots 

### dropdownMenuEntries
<img width="540" height="1110" alt="image" src="https://github.com/user-attachments/assets/84e768d3-3ec6-4f18-96fb-d3c6f384f1c7" />


### onselected
<img width="540" height="1110" alt="image" src="https://github.com/user-attachments/assets/b5d59eea-09a8-4b63-8ab0-eeb27574403c" />


### enableFilter
<img width="540" height="1110" alt="image" src="https://github.com/user-attachments/assets/d0c4e81e-651c-4613-9555-249e0912f672" />

