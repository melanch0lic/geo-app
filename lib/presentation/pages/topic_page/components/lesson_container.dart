import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/presentation/pages/topic_page/state/module.dart';

class LessonContainer extends ConsumerWidget {
  const LessonContainer({super.key, required this.lesson, required this.index});
  final int index;
  final String lesson;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedQuestionIndex = ref.watch(selectedQuestionIndexProvider);
    return InkWell(
      onTap: () {
        ref.read(selectedQuestionIndexProvider.notifier).state = index;
      },
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: selectedQuestionIndex == index
                ? const Color.fromRGBO(107, 78, 255, 1)
                : const Color.fromRGBO(246, 247, 249, 1),
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
