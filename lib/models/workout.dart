// import 'package:first_flutter_app/models/single_workout.dart';
// import 'package:first_flutter_app/models/stats.dart';
//
// class Workout with Stats { // gets stats.dart
//
//   // constructor
//   Workout({
//     required this.name, required this.description, required this.id
//   });
//
//   // fields
//   final Set<SingleWorkout> singleWorkout = {};
//   // final SplitType split;
//   final String name;
//   final String description;
//   final String id;
//   bool _isFav = false; // private updated in toggleIsFav function
//
//   // getters - to access private fields in other classes
//   bool get isFav => _isFav;
//
//   void toggleIsFav() {
//     _isFav = !_isFav; // if false, give us the opposite and vice versa
//   }
// }
//
// // dummy workout data
// List<Workout> workouts = [
//   Workout(id: '1', name: 'Exercise 1', description: 'Some text here'),
// ];


import 'package:first_flutter_app/models/single_workout.dart';
import 'package:first_flutter_app/models/stats.dart';

class Workout with Stats {
  final SingleWorkout singleWorkout;
  final String name;
  final String description;
  final String id;
  bool _isFav = false;

  Workout({
    required this.singleWorkout,
    required this.name,
    required this.description,
    required this.id,
  });

  bool get isFav => _isFav;

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}

// Populate workouts list from SingleWorkout data
List<Workout> workouts = allWorkouts.map((singleWorkout) => Workout(
  singleWorkout: singleWorkout,
  name: singleWorkout.name,
  description: singleWorkout.description,
  id: singleWorkout.id,
)).toList();
