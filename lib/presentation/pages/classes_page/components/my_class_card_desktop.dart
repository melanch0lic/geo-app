import 'package:flutter/material.dart';

import '../../home_page/home_page_desktop/components/current_theme_card_desktop.dart';
import 'icons_row_widget.dart';

class MyClassCardDesktop extends StatelessWidget {
  const MyClassCardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('География 7 «Б»', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          const SizedBox(height: 24),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)],
                ),
                child: const CircleAvatar(
                  //foregroundColor: Color.fromRGBO(103, 110, 118, 0.24),
                  backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                  radius: 32,
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Color.fromRGBO(26, 29, 31, 1),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Учитель', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  Text('Нартиков А. Г.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              IconsRowWidget(),
              SizedBox(width: 60),
              Text('20 учеников',
                  style: TextStyle(color: Color.fromRGBO(153, 144, 255, 1), fontSize: 16, fontWeight: FontWeight.w500))
            ],
          ),
          const SizedBox(height: 20),
          const Text('Текущие темы', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const SizedBox(height: 16),
          const SizedBox(
              height: 125,
              child: CurrentThemeCard(nameClass: 'География 7 «Б»', nameTopic: 'Топография', progress: 50)),
        ]),
      ),
    );
  }
}
