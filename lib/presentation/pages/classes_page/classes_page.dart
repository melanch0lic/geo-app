import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/classes_page/components/my_class_card_desktop.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Мои классы',
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
