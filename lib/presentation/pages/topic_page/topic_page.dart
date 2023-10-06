import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'components/lesson_container.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Топография', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
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
                    width: double.infinity,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      const Text('Урок 3. Ориентирование', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: MarkdownBody(
                            selectable: true,
                            data: '''Для начинающих туристов основой основ является умение работать с компасом
                      и картой, без которых не обходится ни одно туристское путешествие.
                      На школьных уроках природоведения или окружающего мира обучающиеся
                      узнают, что такое **ГОРИЗОНТ**, СТОРОНЫ ГОРИЗОНТА, КОМПАС, КАРТА,
                      МАСШТАБ. Задача педагога дополнительного образования состоит в том, чтобы
                      расширить и закрепить эти знания на практике.
                      Все явления природы: дождь, гроза, туман, снег, метель – происходят в
                      пространстве. В городе на расстоянии друг от друга находятся дома, заводы, фабрики,
                      учреждения. А в лесу – деревья, кустарники, травы. Все эти предметы так же
                      находятся в пространстве.
                      Видимое вокруг нас пространство называется ГОРИЗОНТ.
                      Границу видимого пространства, где небо как бы сходится с поверхностью
                      земли, называют ЛИНИЕЙ ГОРИЗОНТА.
                      Если человек будет двигаться вперёд, то линия горизонта будет всё время
                      удаляться от него. Дойти или доехать до линии горизонта невозможно.
                      На ровном, открытом со всех сторон месте линия горизонта имеет форму
                      окружности.
                      В городе линию горизонта проследить трудно, потому что она закрыта от
                      наших глаз домами, а в лесу – деревьями.
                      Различают четыре основные стороны горизонта: СЕВЕР, ЮГ, ЗАПАД,
                      ВОСТОК.
                      На рисунке или чертеже их обозначают сокращённо
                      начальными буквами: север – С, юг – Ю, запад – З, восток – В.
                      Кроме основных сторон горизонта, различают и
                      промежуточные:
                      Между севером и востоком – северо-восток (СВ),
                      между югом и востоком – юго-восток (ЮВ),
                      между севером и западом – северо-запад (СЗ),
                      между югом и западом – юго-запад (ЮЗ).
                      На картах, схемах и чертежах условно принято
                      обозначать вверху листа – север, внизу – юг, слева – запад,
                      справа – восток.
                      Ориентироваться на местности – значит найти
                      направление сторон горизонта и своё местоположение относительно окружающих
                      местных предметов.
                      Как определить своё местоположение?
                      Для этого нужно знать, как расположены известные предметы – ориентиры
                      (здания, деревья и т. д.) относительно сторон горизонта.
                      Если вы умеете ориентироваться, то всегда правильно определите, в каком
                      направлении надо двигаться, чтобы добраться до нужного места.''',
                            styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                                textTheme: TextTheme(
                                    bodyMedium: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                          fontSize: 18,
                                          height: 1.7,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(26, 26, 26, 1),
                                        ))))),
                      ),
                      const SizedBox(height: 42),
                      Row(
                        children: [
                          const Spacer(),
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
                              child: Row(
                                children: [
                                  Text(
                                    'Следующий урок',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(Icons.arrow_forward, color: Colors.white, size: 20)
                                ],
                              ),
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    ]),
                  ),
                ),
                const SizedBox(width: 34),
                Expanded(
                    flex: 3,
                    child: Container(
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
                      width: double.infinity,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        const Text('Уроки', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 24),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  LessonContainer(lesson: 'Урок 1. Что такое топография?', onTap: () {}),
                                  const SizedBox(height: 16),
                                ],
                              );
                            }),
                        const Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: Row(
                            children: [
                              Icon(Icons.play_arrow_outlined),
                              SizedBox(width: 8),
                              Text('Задание 1. Сопоставь знаки',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
                            ],
                          ),
                        )
                      ]),
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
