import 'package:flutter/material.dart';

class MyClassesDesktop extends StatelessWidget {
  const MyClassesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(32),
        height: 264,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(103, 110, 118, 0.16),
              spreadRadius: 0,
              blurRadius: 1,
              // offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Мои классы',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Показать все',
                    style: TextStyle(color: Color.fromRGBO(107, 78, 255, 1), fontWeight: FontWeight.w700),
                  ))
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color.fromRGBO(246, 247, 249, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 32, bottom: 16, top: 16),
                      child: Text(
                        'География 7 «Б»',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color.fromRGBO(246, 247, 249, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 32, bottom: 16, top: 16),
                      child: Text(
                        'Химия 7 «Б»',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color.fromRGBO(246, 247, 249, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 32, bottom: 16, top: 16),
                      child: Text(
                        'Алгебра 7 «Б»',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color.fromRGBO(246, 247, 249, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 32, bottom: 16, top: 16),
                      child: Text(
                        'Биология 7 «Б»',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
