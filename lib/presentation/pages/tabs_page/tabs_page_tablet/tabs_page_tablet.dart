import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/presentation/pages/tabs_page/state/module.dart';
import 'package:geo_app/presentation/pages/tabs_page/tabs_page_mobile/components/drawer_mobile.dart';
import '../../../widgets/enter_class_button_mobile.dart';
import '../../classes_page/classes_page.dart';
import '../../home_page/home_page.dart';

class TabsPageTablet extends StatelessWidget {
  const TabsPageTablet({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPageTablet());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMobile(),
      appBar: AppBar(
          //  title: const Text('Привет, Заур!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          actions: const [
            EnterClassButtonMobile(),
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
