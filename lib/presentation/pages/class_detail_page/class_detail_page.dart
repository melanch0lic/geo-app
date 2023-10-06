import 'package:flutter/material.dart';

import 'components/class_current_theme_widget.dart';
import 'components/completed_topics_widget_desktop.dart';

class ClassDetailPage extends StatelessWidget {
  final int id;
  const ClassDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Класс «География 7 «Б»»',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(width: 2, color: Color.fromRGBO(107, 78, 255, 1)),
                        backgroundColor: const Color.fromRGBO(107, 78, 255, 1),
                        foregroundColor: const Color.fromRGBO(107, 78, 255, 1),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        elevation: 0,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        child: Center(
                            child: Text(
                          'Вступить в класс',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Flexible(
                      flex: 2,
                      child: Column(
                        children: [
                          ClassCurrentThemeWidgetDesktop(),
                          SizedBox(height: 24),
                          CompletedTopicsWidgetDesktop()
                        ],
                      )),
                  const SizedBox(width: 34),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(32),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(103, 110, 118, 0.16),
                          spreadRadius: 0,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      const Text(
                        'Участники класса',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)
                              ],
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                              radius: 28,
                              child: Icon(
                                Icons.person,
                                size: 26,
                                color: Color.fromRGBO(26, 29, 31, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Учитель',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Text('Нартиков А.Г')
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      ...List.generate(
                          13,
                          (index) => Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              child: Row(
                                children: [
                                  Text('$index'),
                                  const SizedBox(width: 18),
                                  Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)
                                      ],
                                    ),
                                    child: const CircleAvatar(
                                      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                                      radius: 20,
                                      child: Icon(
                                        Icons.person,
                                        size: 16,
                                        color: Color.fromRGBO(26, 29, 31, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'Ученик $index',
                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                  )
                                ],
                              )))
                    ]),
                  ))
                ]),
              ],
            ),
          ),
        ));
  }
}
