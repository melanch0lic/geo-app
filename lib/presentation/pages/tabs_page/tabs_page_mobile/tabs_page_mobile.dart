import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/presentation/pages/tabs_page/state/module.dart';
import 'package:geo_app/presentation/pages/tabs_page/tabs_page_mobile/components/drawer_mobile.dart';

import '../../classes_page/classes_page.dart';
import '../../home_page/home_page.dart';

class TabsPageMobile extends StatelessWidget {
  const TabsPageMobile({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPageMobile());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMobile(),
      appBar: AppBar(
          //  title: const Text('Привет, Заур!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Center(
                  child: Text('Вступить в класс',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black))),
            ),
          ]),
      body: Container(
        color: const Color.fromRGBO(246, 247, 249, 1),
        child: Consumer(builder: (context, ref, child) {
          final controller = ref.read(pageControllerProvider);
          return PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: const [HomePage(), ClassesPage()],
          );
        }),
      ),
    );
  }
}
