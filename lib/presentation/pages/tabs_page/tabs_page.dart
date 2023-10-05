import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/presentation/pages/tabs_page/state/module.dart';

import '../../../app_bloc.dart';
import '../classes_page/classes_page.dart';
import '../home_page/home_page.dart';
import 'components/side_menu.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPage());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: SideMenu()),
          Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromRGBO(246, 247, 249, 1),
                child: Consumer(builder: (context, ref, child) {
                  final controller = ref.read(pageControllerProvider);
                  return PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    children: const [HomePage(), ClassesPage()],
                  );
                }),
              ))
        ],
      )),
    );
  }
}
