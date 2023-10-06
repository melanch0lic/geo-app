import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class MyProgressMobile extends StatelessWidget {
  const MyProgressMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 200,
      width: double.infinity,
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
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Мой прогресс',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    SimpleCircularProgressBar(
                      size: 120,
                      backColor: const Color.fromRGBO(246, 247, 249, 1),
                      progressColors: const [Color.fromRGBO(47, 148, 97, 1)],
                      startAngle: 180,
                      valueNotifier: ValueNotifier(55),
                      onGetText: (double value) {
                        return Text('${value.toInt()}%',
                            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20));
                      },
                    ),
                    const Positioned(
                      bottom: 35,
                      left: 18,
                      child: Text('Тем пройдено', style: TextStyle(fontSize: 12)),
                    )
                  ],
                ),
                Stack(
                  children: [
                    SimpleCircularProgressBar(
                      size: 120,
                      backColor: const Color.fromRGBO(246, 247, 249, 1),
                      progressColors: const [Color.fromRGBO(251, 188, 85, 1)],
                      startAngle: 180,
                      valueNotifier: ValueNotifier(70),
                      onGetText: (double value) {
                        return Text('${value.toInt()}%',
                            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20));
                      },
                    ),
                    const Positioned(
                      bottom: 35,
                      left: 29,
                      child: Text('Правильно', style: TextStyle(fontSize: 12)),
                    )
                  ],
                ),
              ],
            )
          ]),
    );
  }
}
