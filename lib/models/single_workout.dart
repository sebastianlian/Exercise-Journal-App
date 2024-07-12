import 'package:first_flutter_app/models/split_type.dart';

class SingleWorkout {
  final String id;
  final String name;
  final String bodyPart;
  final String description;
  // final SplitType split;

  SingleWorkout({
    required this.id,
    required this.name,
    required this.bodyPart,
    required this.description,
    // required this.split
  });
}

final List<SingleWorkout> allWorkouts = [
  SingleWorkout(
    id: '1',
    name: 'Decline Crunch',
    bodyPart: 'Abs',
    description: 'The decline crunch primarily targets the obliques and abdominals. It involves lying on a decline bench and contracting the abdominal muscles to lift the torso toward the knees.',
  ),
  SingleWorkout(
    id: '2',
    name: 'Torso Rotation',
    bodyPart: 'Abs',
    description: 'Torso rotation exercises engage the oblique muscles and abdominals. These exercises often involve twisting motions to strengthen and tone the sides of the abdomen.',
  ),
  SingleWorkout(
    id: '3',
    name: 'Hip Adduction',
    bodyPart: 'Adductors',
    description: 'Hip adduction exercises target the inner thigh muscles (adductors). These exercises typically involve pulling the legs toward the midline of the body against resistance.',
  ),
  SingleWorkout(
    id: '4',
    name: 'Calf Press',
    bodyPart: 'Calves',
    description: 'The calf press primarily targets the calf muscles (gastrocnemius and soleus). It involves pressing the balls of the feet against a platform or floor to lift the heels.',
  ),
  SingleWorkout(
    id: '5',
    name: 'Leg Extension',
    bodyPart: 'Quadriceps',
    description: 'Leg extension exercises primarily target the quadriceps muscles at the front of the thigh. These exercises involve extending the knees against resistance to strengthen the quads.',
  ),
  SingleWorkout(
    id: '6',
    name: 'Seated Leg Curl',
    bodyPart: 'Hamstrings',
    description: 'Seated leg curl exercises target the hamstring muscles at the back of the thigh. This exercise involves curling the legs against resistance while seated on a machine.',
  ),
  SingleWorkout(
    id: '7',
    name: 'Farmers Walk',
    bodyPart: 'Full Body',
    description: 'Farmers walk exercises work the forearms, trapezius, shoulders, and core muscles. It involves carrying heavy weights in each hand and walking for a distance or time.',
  ),
  SingleWorkout(
    id: '8',
    name: 'Goblet Squat',
    bodyPart: 'Quadriceps, Hamstrings, Glutes',
    description: 'The goblet squat targets the quadriceps, hamstrings, glutes, and core muscles. It involves holding a dumbbell or kettlebell close to the chest while performing squats.',
  ),
  SingleWorkout(
    id: '9',
    name: 'Lat Pulldown',
    bodyPart: 'Lats, Biceps, Upper Back',
    description: 'Lat pulldown exercises primarily target the latissimus dorsi (lats) muscles of the back. This exercise involves pulling a bar down in front of or behind the head to the chest level.',
  ),
  SingleWorkout(
    id: '10',
    name: 'Seated Cable Row',
    bodyPart: 'Lats, Rhomboids, Biceps',
    description: 'Seated cable row exercises work the latissimus dorsi, rhomboids, biceps, and forearms. It involves pulling a handle towards the torso while seated and maintaining a straight posture.',
  ),
  SingleWorkout(
    id: '11',
    name: 'Bench Press',
    bodyPart: 'Chest, Shoulders, Triceps',
    description: 'The bench press targets the chest, shoulders, and triceps muscles. It involves lifting a barbell or dumbbells from the chest to full arm extension while lying on a bench.',
  ),
  SingleWorkout(
    id: '12',
    name: 'Lateral Raise',
    bodyPart: 'Shoulders',
    description: 'Lateral raise exercises primarily target the shoulder muscles (deltoids), especially the lateral head. This exercise involves lifting dumbbells or cables out to the sides at shoulder height.',
  ),
  SingleWorkout(
    id: '13',
    name: 'Shoulder Press',
    bodyPart: 'Shoulders, Triceps',
    description: 'Shoulder press exercises target the shoulder muscles (deltoids) and triceps. It involves pressing weights overhead from shoulder height to full arm extension.',
  ),
  SingleWorkout(
    id: '14',
    name: 'Chest Dip',
    bodyPart: 'Chest, Triceps',
    description: 'Chest dip exercises primarily target the chest and triceps muscles. This exercise involves lowering and lifting the body using parallel bars or dip bars.',
  ),
  SingleWorkout(
    id: '15',
    name: 'Single Arm Triceps Pushdown',
    bodyPart: 'Triceps',
    description: 'Single arm triceps pushdown exercises isolate and strengthen the triceps muscles. It involves pushing a cable attachment downward using one arm while standing.',
  ),
  SingleWorkout(
    id: '16',
    name: 'Incline Bench Press',
    bodyPart: 'Upper Chest, Shoulders, Triceps',
    description: 'The incline bench press targets the upper chest, shoulders, and triceps muscles. It involves lifting a barbell or dumbbells on an incline bench at an angle.',
  ),
  SingleWorkout(
    id: '17',
    name: 'Straight Arm Lat Pulldown',
    bodyPart: 'Lats',
    description: 'Straight arm lat pulldown exercises target the latissimus dorsi and upper back muscles. This exercise involves pulling a cable attachment downward while keeping the arms straight.',
  ),
  SingleWorkout(
    id: '18',
    name: 'Bench Press',
    bodyPart: 'Chest, Shoulders, Triceps',
    description: 'The bench press targets the chest, shoulders, and triceps muscles. It involves lifting a barbell or dumbbells from the chest to full arm extension while lying on a bench.',
  ),
  SingleWorkout(
    id: '19',
    name: 'Skull Crusher',
    bodyPart: 'Triceps',
    description: 'Skull crusher exercises primarily target the triceps muscles. It involves lowering and lifting a barbell or dumbbells toward the forehead while lying on a bench.',
  ),
  SingleWorkout(
    id: '20',
    name: 'Bicep Curl',
    bodyPart: 'Biceps',
    description: 'Bicep curl exercises primarily target the biceps muscles. It involves lifting dumbbells or a barbell from a fully extended arm position to shoulder level.',
  ),
];