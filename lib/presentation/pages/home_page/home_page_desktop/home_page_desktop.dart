import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/home_page/home_page_desktop/components/deadline_desktop.dart';
import 'package:geo_app/presentation/pages/home_page/home_page_desktop/components/last_topics_desktop.dart';
import 'package:geo_app/presentation/pages/home_page/home_page_desktop/components/my_progress_desktop.dart';

import '../../../widgets/enter_class_button.dart';
import 'components/my_classes_desktop.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(64),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Привет Заур!',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    EnterClassButton(),
                  ],
                ),
                SizedBox(height: 48),
                Row(
                  children: [MyClassesDesktop(), SizedBox(width: 34), MyProgressDesktop()],
                ),
                SizedBox(height: 34),
                Row(
                  children: [LastTopicsDesktop(), SizedBox(width: 34), DeadlineDesktop()],
                )
              ],
            ),
          ),
        ));
  }
}
