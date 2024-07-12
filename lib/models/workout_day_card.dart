import 'package:flutter/material.dart';

class WorkoutDayCard extends StatefulWidget {
  const WorkoutDayCard({super.key});

  @override
  State<WorkoutDayCard> createState() => _WorkoutDayCardState();
}

class _WorkoutDayCardState extends State<WorkoutDayCard> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical:8),
              child: Row(
                children: [

                ],
              )
          )
        ],
      ),
    );
  }
}
