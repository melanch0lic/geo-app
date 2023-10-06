import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/class_detail_page/class_detail_page_mobile/components/completed_topics_widget_mobile.dart';
import 'package:geo_app/presentation/pages/tabs_page/tabs_page_mobile/components/drawer_mobile.dart';

import '../../../widgets/enter_class_button_mobile.dart';
import '../class_detail_page_mobile/components/class_current_theme_widget_mobile.dart';

class ClassDetailPageTablet extends StatelessWidget {
  final int id;
  const ClassDetailPageTablet({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerMobile(),
        appBar: AppBar(
            //  title: const Text('Привет, Заур!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            actions: const [
              EnterClassButtonMobile(),
            ]),
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Класс «География 7 «Б»»',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 16),
                Column(
                  children: [ClassCurrentThemeWidgetMobile(), SizedBox(height: 12), CompletedTopicsWidgetMobile()],
                ),
              ],
            ),
          ),
        ));
  }
}
