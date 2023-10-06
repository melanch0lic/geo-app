import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/classes_page/components/my_class_card_desktop.dart';

import '../../widgets/enter_class_button.dart';

class ClassesPage extends StatelessWidget {
  const ClassesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Мои классы',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    EnterClassButton(),
                  ],
                ),
                const SizedBox(height: 48),
                GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, crossAxisSpacing: 32, mainAxisSpacing: 32, mainAxisExtent: 430),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MyClassCardDesktop();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
