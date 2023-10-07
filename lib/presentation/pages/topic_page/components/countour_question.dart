import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geo_app/presentation/pages/topic_page/state/countour_questions_notifier.dart';
import 'package:geo_app/presentation/pages/topic_page/state/module.dart';

class CountourQuestionWidget extends ConsumerWidget {
  const CountourQuestionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countourQuestions = ref.watch(countourQuestionsProvider);
    return countourQuestions.when(
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
          child: ref.watch(countourQuestionsProvider.notifier).answersList!.contains(AnswerTypeResult.none)
              ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Задание 1. Назови страну по описанию',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      ...ref.watch(countourQuestionsProvider.notifier).answersList!.map(
                            (AnswerTypeResult flag) => Expanded(
                              child: Container(
                                margin: flag != data.last ? const EdgeInsets.only(right: 5) : null,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: flag == AnswerTypeResult.none
                                        ? const Color.fromRGBO(229, 231, 234, 1)
                                        : flag == AnswerTypeResult.right
                                            ? Colors.green
                                            : Colors.red,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            ),
                          ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Осталось ${ref.watch(countourQuestionsProvider.notifier).tryCount} попытки',
                        style: const TextStyle(
                            color: Color.fromRGBO(83, 180, 131, 1), fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 18),
                  Stack(
                    children: [
                      Center(
                          child: SvgPicture.asset(
                        data[ref.watch(countourQuestionsProvider.notifier).currentQuestionIndex].imageUrl,
                        width: 350,
                        height: 350,
                        color: const Color.fromRGBO(233, 162, 59, 1),
                      )),
                      if (ref.watch(countourQuestionsProvider.notifier).answerTypeResult == AnswerTypeResult.right ||
                          ref.watch(countourQuestionsProvider.notifier).answerTypeResult == AnswerTypeResult.wrong)
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () => ref.read(countourQuestionsProvider.notifier).nextQuestion(),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromRGBO(107, 78, 255, 1)),
                              child: const Icon(Icons.arrow_circle_right, color: Colors.white),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  if (ref.watch(countourQuestionsProvider.notifier).answerTypeResult == AnswerTypeResult.right)
                    const Text('Правильно!',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.green)),
                  if (ref.watch(countourQuestionsProvider.notifier).answerTypeResult == AnswerTypeResult.wrong)
                    const Text('Увы, ответ неверный :(',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.red)),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...data[ref.watch(countourQuestionsProvider.notifier).currentQuestionIndex].name.map((e) {
                        return SizedBox(
                          height: 56,
                          width: 190,
                          child: ElevatedButton(
                            onPressed:
                                ref.watch(countourQuestionsProvider.notifier).answerTypeResult == AnswerTypeResult.none
                                    ? () {
                                        ref.read(countourQuestionsProvider.notifier).checkAnswer(e);
                                      }
                                    : null,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(107, 78, 255, 1), foregroundColor: Colors.white),
                            child: Text(
                              e,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      }).toList()
                    ],
                  )
                ])
              : SizedBox(
                  height: 400,
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text(
                        'Задание пройдено!',
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Выполнено ${ref.watch(countourQuestionsProvider.notifier).answersList!.where((element) => element == AnswerTypeResult.right).length} из ${ref.watch(countourQuestionsProvider.notifier).answersList!.length}',
                        style: const TextStyle(
                            color: Color.fromRGBO(83, 180, 131, 1), fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () => ref.read(countourQuestionsProvider.notifier).init(),
                          child: const Text('Повторить'))
                    ]),
                  ),
                ),
        );
      },
      error: (error, stackTrace) {
        return Container();
      },
      loading: () => const SizedBox(
        height: 400,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
