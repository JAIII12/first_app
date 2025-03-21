import 'package:flutter/material.dart';

class ExercisePage extends StatefulWidget {
  final IconData icon;
  final String exerciseName;
  final int numberOfExercises;
  final Color color;

  const ExercisePage({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    required this.color,
  }) : super(key: key);

  @override
  State<ExercisePage> createState() => _ExerciseState();
}

class _ExerciseState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: widget.color, // Fix: Use the provided color
                    child: Icon(
                      widget.icon, // Fix: Access using `widget.`
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      widget.exerciseName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: widget.color, // Fix: Use the provided color
                      ),
                    ),
                    SizedBox(height: 5),
                    // Subtitle
                    Text(
                      "${widget.numberOfExercises} Exercises", // Fix: Correct string interpolation
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
