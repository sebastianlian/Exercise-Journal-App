import 'package:flutter/material.dart';

class ExpandedContent extends StatelessWidget {
  final VoidCallback onSelect;

  const ExpandedContent({
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> focusAreas = ['Cardio', 'Strength', 'Flexibility', 'Endurance']; // Example list of focus areas

    List<DropdownMenuItem<String>> dropdownMenuEntries = focusAreas.map((String focusArea) {
      return DropdownMenuItem<String>(
        value: focusArea,
        child: Text(focusArea),
      );
    }).toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Select an area of focus'), // Header text for the dropdown
          DropdownButton<String>(
            isExpanded: true, // Ensures the dropdown button expands to fit its parent
            items: dropdownMenuEntries,
            onChanged: (String? selectedArea) {
              // Handle selection here, if needed
            },
          ),
          ElevatedButton(
            onPressed: onSelect,
            child: Text('Select Options'), // Button text
          ),
          // Add more widgets as needed
        ],
      ),
    );
  }
}
