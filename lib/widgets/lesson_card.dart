
import 'package:flutter/material.dart';

import '../constants/icons.dart';
import '../models/lesson.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;
  const LessonCard({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        lesson.isPlaying
            ? const Icon(Icons.play_circle,color: Color.fromARGB(255, 60, 51, 192),)
            : const Icon(Icons.play_circle,color: Color.fromARGB(255, 131, 128, 165),),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lesson.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                lesson.duration,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        lesson.isCompleted
            ? const Icon(Icons.check,color: Color.fromARGB(255, 60, 51, 192),)
            : const Icon(Icons.lock,color: Color.fromARGB(255, 54, 52, 92),)
      ],
    );
  }
}
