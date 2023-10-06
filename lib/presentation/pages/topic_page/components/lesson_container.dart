import 'package:flutter/material.dart';

class LessonContainer extends StatelessWidget {
  const LessonContainer({super.key, required this.lesson, required this.onTap});
  final String lesson;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: const Color.fromRGBO(246, 247, 249, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 32, bottom: 16, top: 16),
            child: Row(
              children: [
                const Icon(Icons.description_outlined),
                const SizedBox(width: 8),
                Text(
                  lesson,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )),
    );
  }
}
