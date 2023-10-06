import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class MyProgressDesktop extends StatelessWidget {
  const MyProgressDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(32),
        height: 264,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Мой прогресс',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      SimpleCircularProgressBar(
                        size: 136,
                        backColor: const Color.fromRGBO(246, 247, 249, 1),
                        progressColors: const [Color.fromRGBO(47, 148, 97, 1)],
                        startAngle: 180,
                        valueNotifier: ValueNotifier(55),
                        onGetText: (double value) {
                          return Text('${value.toInt()}%',
                              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24));
                        },
                      ),
                      const Positioned(
                        bottom: 35,
                        left: 18,
                        child: Text('Тем пройдено'),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      SimpleCircularProgressBar(
                        size: 136,
                        backColor: const Color.fromRGBO(246, 247, 249, 1),
                        progressColors: const [Color.fromRGBO(251, 188, 85, 1)],
                        startAngle: 180,
                        valueNotifier: ValueNotifier(70),
                        onGetText: (double value) {
                          return Text('${value.toInt()}%',
                              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24));
                        },
                      ),
                      const Positioned(
                        bottom: 35,
                        left: 29,
                        child: Text(
                          'Правильно',
                        ),
                      )
                    ],
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
