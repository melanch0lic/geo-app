import 'package:flutter/material.dart';

class DeadlineDesktop extends StatelessWidget {
  const DeadlineDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: const EdgeInsets.all(32),
            height: 392,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Дедлайны ',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Показать все',
                          style: TextStyle(color: Color.fromRGBO(107, 78, 255, 1), fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
              ],
            )));
  }
}