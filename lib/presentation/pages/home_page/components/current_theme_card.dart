import 'package:flutter/material.dart';

class CurrentThemeCard extends StatelessWidget {
  const CurrentThemeCard({super.key, required this.nameTopic, required this.nameClass, required this.progress});
  final String nameTopic;
  final String nameClass;
  final int progress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(32), color: const Color.fromRGBO(246, 247, 249, 1)),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/tabs/topic_detail/1');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(107, 78, 255, 1),
                                  borderRadius: BorderRadius.circular(100)),
                              width: 32,
                              height: 32,
                              child: const Icon(Icons.play_arrow, color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(nameTopic, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text('Мой прогресс', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(nameClass,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(103, 110, 118, 1))),
                      const SizedBox(height: 12),
                      Text('$progress/100', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  LinearProgressIndicator(
                    value: progress / 100,
                    color: const Color.fromRGBO(47, 148, 97, 1),
                    backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
