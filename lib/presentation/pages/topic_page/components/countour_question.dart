import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/presentation/pages/topic_page/state/module.dart';

class CountourQuestionWidget extends ConsumerWidget {
  const CountourQuestionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(countourQuestionsProvider);
    return data.when(
      data: (data) {
        return Container(
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
          padding: const EdgeInsets.all(32),
          child: const Column(children: [Text('Задание 1. Назови страну по описанию')]),
        );
      },
      error: (error, stackTrace) {
        return Container();
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
