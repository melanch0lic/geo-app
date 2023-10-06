import 'package:flutter/material.dart';

import 'class_progress_widget.dart';

class ClassCurrentThemeWidgetDesktop extends StatelessWidget {
  const ClassCurrentThemeWidgetDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Топография',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Дедлайн:'),
                  Text(
                    '11 октября, 11:59',
                    style: TextStyle(color: Color.fromRGBO(107, 78, 255, 1)),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Текущая тема',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              ...List.generate(
                16,
                (index) => Expanded(
                  child: Container(
                    margin: index != 15 ? const EdgeInsets.only(right: 5) : null,
                    height: 8,
                    decoration: BoxDecoration(
                        color: index <= 8 ? Colors.green : const Color.fromRGBO(229, 231, 234, 1),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'Статистика по классу',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClassProgressWidgetDesktop(
                color: Color.fromRGBO(83, 180, 131, 1),
                text: 'Средний процент\nпрохождения',
                percent: 65,
              ),
              ClassProgressWidgetDesktop(
                color: Color.fromRGBO(233, 162, 59, 1),
                text: 'Прошли тему\nполностью',
                percent: 35,
              ),
              ClassProgressWidgetDesktop(
                color: Color.fromRGBO(153, 144, 255, 1),
                text: 'Средняя оценка',
                percent: 55,
              ),
            ],
          )
        ],
      ),
    );
  }
}
