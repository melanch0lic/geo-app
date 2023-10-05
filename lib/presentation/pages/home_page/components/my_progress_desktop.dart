import 'package:flutter/material.dart';

class MyProgressDesktop extends StatelessWidget {
  const MyProgressDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
        child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Мой прогресс',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          )
        ]),
      ),
    );
  }
}
