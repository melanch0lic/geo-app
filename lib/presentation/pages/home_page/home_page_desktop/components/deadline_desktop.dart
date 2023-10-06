import 'package:flutter/material.dart';

class DeadlineDesktop extends StatelessWidget {
  const DeadlineDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: const EdgeInsets.all(32),
            height: 392,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Дедлайны ',
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
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32), color: const Color.fromRGBO(246, 247, 249, 1)),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                  child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Топография', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text('География 7 «Б»',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(103, 110, 118, 1))),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('11 октября', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text('11:59', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
                      ],
                    ),
                  ]),
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32), color: const Color.fromRGBO(246, 247, 249, 1)),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                  child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Производные', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text('Алгебра 7 «Б»',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(103, 110, 118, 1))),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('14 октября', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        Text('18:00', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
                      ],
                    ),
                  ]),
                ),
              ],
            )));
  }
}
