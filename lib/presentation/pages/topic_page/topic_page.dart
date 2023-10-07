import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/presentation/pages/topic_page/components/text_question.dart';

import 'components/countour_question.dart';
import 'components/lesson_container.dart';
import 'state/module.dart';

class TopicPage extends ConsumerWidget {
  final int id;
  const TopicPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedQuestionIndex = ref.watch(selectedQuestionIndexProvider);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Топография', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 6, child: selectedQuestionIndex == 3 ? const CountourQuestionWidget() : const TextQuestion()),
                const SizedBox(width: 34),
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(103, 110, 118, 0.16),
                            spreadRadius: 0,
                            blurRadius: 1,
                            // offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(32),
                      width: double.infinity,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        const Text('Уроки', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 24),
                        ...List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    LessonContainer(
                                      icon: const Icon(Icons.description_outlined),
                                      lesson: 'Урок ${index + 1}. Что такое топография?',
                                      index: index,
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                )),
                        const LessonContainer(
                          icon: Icon(Icons.play_arrow_outlined),
                          lesson: 'Задание 1. Назови страну по описанию',
                          index: 3,
                        ),
                        // InkWell(
                        //   onTap: () => ref.read(selectedQuestionIndexProvider.notifier).state = 3,
                        //   child: const Padding(
                        //     padding: EdgeInsets.only(left: 24),
                        //     child: Row(
                        //       children: [
                        //         SizedBox(width: 8),
                        //         Text('Задание 1. Назови страну по описанию',
                        //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
                        //       ],
                        //     ),
                        //   ),
                        // )
                      ]),
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
