import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/home_page/home_page_mobile/components/deadline_mobile.dart';
import 'components/last_topics_mobile.dart';
import 'components/my_classes_mobile.dart';
import 'components/my_progress_mobile.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                MyClassesMobile(),
                SizedBox(height: 16),
                MyProgressMobile(),
                SizedBox(height: 16),
                LastTopicsMobile(),
                SizedBox(height: 16),
                DeadlineMobile()
              ],
            ),
          ),
        ));
  }
}
