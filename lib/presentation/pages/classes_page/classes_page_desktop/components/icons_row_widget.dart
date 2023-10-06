import 'package:flutter/material.dart';

class IconsRowWidget extends StatelessWidget {
  const IconsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32 * 1.5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight * 6.7,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)],
              ),
              child: const CircleAvatar(
                backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                radius: 16,
                child: Icon(
                  Icons.person,
                  size: 18,
                  color: Color.fromRGBO(26, 29, 31, 1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight * 4.8,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)],
              ),
              child: const CircleAvatar(
                backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                radius: 16,
                child: Icon(
                  Icons.person,
                  size: 18,
                  color: Color.fromRGBO(26, 29, 31, 1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight * 2.9,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)],
              ),
              child: const CircleAvatar(
                backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                radius: 16,
                child: Icon(
                  Icons.person,
                  size: 18,
                  color: Color.fromRGBO(26, 29, 31, 1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)],
              ),
              child: const CircleAvatar(
                backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                radius: 16,
                child: Icon(
                  Icons.person,
                  size: 18,
                  color: Color.fromRGBO(26, 29, 31, 1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 1, color: Color.fromRGBO(103, 110, 118, 0.24), spreadRadius: 1)],
              ),
              child: const CircleAvatar(
                backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                radius: 16,
                child: Icon(
                  Icons.person,
                  size: 18,
                  color: Color.fromRGBO(26, 29, 31, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
