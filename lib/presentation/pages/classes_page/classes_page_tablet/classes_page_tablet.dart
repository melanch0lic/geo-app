import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/classes_page/classes_page_mobile/components/my_class_card_mobile.dart';

class ClassesPageTablet extends StatelessWidget {
  const ClassesPageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Мои классы',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                GridView.builder(
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisSpacing: 12, mainAxisExtent: 360),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MyClassCardMobile();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
