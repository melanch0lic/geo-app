import 'package:flutter/material.dart';

import 'current_theme_card_desktop.dart';

class LastTopicsDesktop extends StatelessWidget {
  const LastTopicsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 2,
        child: Container(
            padding: const EdgeInsets.all(32),
            height: 392,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Текущие темы',
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
                const SizedBox(height: 24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CurrentThemeCard(nameClass: 'География 7 «Б»', nameTopic: 'Топография', progress: 50),
                    SizedBox(width: 24),
                    CurrentThemeCard(nameClass: 'Алгебра 7 «Б»', nameTopic: 'Производные', progress: 75),
                  ],
                ),
                const SizedBox(height: 24),
                const Row(
                  children: [
                    CurrentThemeCard(nameClass: 'Биология 7 «Б»', nameTopic: 'Анатомия', progress: 21),
                    SizedBox(width: 24),
                    CurrentThemeCard(nameClass: 'Химия 7 «Б»', nameTopic: 'Решение задач', progress: 90),
                  ],
                )
              ],
            )));
  }
}
