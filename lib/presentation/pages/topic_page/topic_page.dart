import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/topic_page/components/text_question.dart';

import 'components/lesson_container.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  flex: 6,
                  child: PageView(children: const [TextQuestion()]),
                ),
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
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  LessonContainer(lesson: 'Урок 1. Что такое топография?', onTap: () {}),
                                  const SizedBox(height: 16),
                                ],
                              );
                            }),
                        const Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: Row(
                            children: [
                              Icon(Icons.play_arrow_outlined),
                              SizedBox(width: 8),
                              Text('Задание 1. Сопоставь знаки',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
                            ],
                          ),
                        )
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
