import 'package:flutter/material.dart';
import 'package:first_flutter_app/shared/styled_button.dart';
import 'package:first_flutter_app/shared/styled_text.dart';
import 'package:first_flutter_app/screens/profile/profile_days_home.dart'; // Adjust import based on your actual project structure

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedWorkoutDays = 5; // Default number of workout days

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> workoutDays = List.generate(selectedWorkoutDays, (index) => {
      'day': 'Day ${index + 1}',
      'image': 'assets/img/numbers/number_${index + 1}.jpg', // Example image path
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Workouts'), // Use Text widget instead of StyledTitle for simplicity
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Number of Workout Days:'), // Use Text widget instead of StyledText for simplicity
                DropdownButton<int>(
                  value: selectedWorkoutDays,
                  items: [1, 2, 3, 4, 5, 6, 7].map((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()), // Use Text widget instead of StyledText for simplicity
                    );
                  }).toList(),
                  onChanged: (int? value) {
                    setState(() {
                      selectedWorkoutDays = value ?? 1;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: workoutDays.length,
                itemBuilder: (_, index) {
                  return WorkoutDayCard(
                    workoutDay: workoutDays[index]['day']!,
                    imagePath: workoutDays[index]['image']!,
                    onExpand: (bool expanded) {
                      setState(() {
                        // Handle expansion state if needed
                      });
                    },
                    onSelectOptions: () {
                      // Handle selection of options for this workout day
                      // This function will be called when user selects options
                    },
                  );
                },
              ),
            ),

            StyledButton(
              onPressed: () {
                // Handle create new plan button press
              },
              child: Text('Create New Plan'), // Use Text widget instead of StyledHeading for simplicity
            ),

          ],
        ),
      ),
    );
  }
}

class WorkoutDayCard extends StatefulWidget {
  final String workoutDay;
  final String imagePath;
  final Function(bool expanded) onExpand;
  final VoidCallback onSelectOptions;

  const WorkoutDayCard({
    required this.workoutDay,
    required this.imagePath,
    required this.onExpand,
    required this.onSelectOptions,
    Key? key,
  }) : super(key: key);

  @override
  _WorkoutDayCardState createState() => _WorkoutDayCardState();
}

class _WorkoutDayCardState extends State<WorkoutDayCard> {
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
    widget.onExpand(isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: toggleExpansion,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    widget.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                  Text(widget.workoutDay), // Use Text widget instead of StyledText for simplicity
                  Expanded(child: SizedBox()),
                  Icon(
                    isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded) ExpandedContent(onSelect: widget.onSelectOptions), // Conditionally show expanded content
        ],
      ),
    );
  }
}

class ExpandedContent extends StatelessWidget {
  final VoidCallback onSelect;

  const ExpandedContent({
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Select options for this workout day:'), // Example text, customize as needed
          ElevatedButton(
            onPressed: onSelect,
            child: Text('Select Options'), // Example button text, customize as needed
          ),
          // Add more widgets for options selection
        ],
      ),
    );
  }
}
