import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/presentation/pages/tabs_page/state/module.dart';
import 'package:geo_app/presentation/pages/topic_page/topic_page.dart';

import '../../classes_page/classes_page.dart';
import '../../home_page/home_page.dart';

class TabsPageTablet extends StatelessWidget {
  const TabsPageTablet({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPageTablet());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(246, 247, 249, 1),
        child: Consumer(builder: (context, ref, child) {
          final controller = ref.read(pageControllerProvider);
          return PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: const [HomePage(), ClassesPage(), TopicPage()],
          );
        }),
      ),
    );
  }
}
