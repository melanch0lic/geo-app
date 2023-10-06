import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ClassProgressWidgetDesktop extends StatelessWidget {
  final double percent;
  final Color color;
  final String text;
  const ClassProgressWidgetDesktop({super.key, required this.color, required this.text, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SimpleCircularProgressBar(
          size: 100,
          backColor: const Color.fromRGBO(246, 247, 249, 1),
          progressColors: [color],
          startAngle: 180,
          valueNotifier: ValueNotifier(percent),
          onGetText: (double value) {
            return Text('${value.toInt()}%', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24));
          },
        ),
        const SizedBox(width: 16),
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
