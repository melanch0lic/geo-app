import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/home_page/home_page_desktop/components/deadline_desktop.dart';
import 'package:geo_app/presentation/pages/home_page/home_page_desktop/components/last_topics_desktop.dart';
import 'package:geo_app/presentation/pages/home_page/home_page_desktop/components/my_progress_desktop.dart';

import 'components/my_classes_desktop.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

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
                      'Привет Заур!',
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
                const Row(
                  children: [MyClassesDesktop(), SizedBox(width: 34), MyProgressDesktop()],
                ),
                const SizedBox(height: 34),
                const Row(
                  children: [LastTopicsDesktop(), SizedBox(width: 34), DeadlineDesktop()],
                )
              ],
            ),
          ),
        ));
  }
}
