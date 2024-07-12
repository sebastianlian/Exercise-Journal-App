import 'package:first_flutter_app/models/workout.dart';
import 'package:first_flutter_app/theme.dart';
import 'package:flutter/material.dart';

import '../../shared/styled_text.dart';

class WorkoutDayCard extends StatelessWidget {
  const WorkoutDayCard({required this.workoutDay, required this.imagePath, super.key});

  final String workoutDay;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),

            const SizedBox(width: 16),
            StyledText(workoutDay),

            // put a arrow all the way to the right
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_right_rounded, color: AppColors.textColor),
            )
          ],
        ),
      ),
    );
  }
}
