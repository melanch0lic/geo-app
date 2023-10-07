import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/data/data_sources/api_client.dart';
import 'package:geo_app/data/models/question_country_model.dart';

import '../../../../core/util/default_state/default_state.dart';

enum AnswerTypeResult { right, wrong, none }

class CountourQuestionsNotifier extends StateNotifier<DefaultState<List<QuestionCountryModel>>> {
  final ApiClient _apiClient;

  late AnswerTypeResult _answerTypeResult;
  AnswerTypeResult get answerTypeResult => _answerTypeResult;

  List<QuestionCountryModel>? _questions;

  late int _tryCount;
  int get tryCount => _tryCount;

  late int _currentQuestionIndex;
  int get currentQuestionIndex => _currentQuestionIndex;

  List<AnswerTypeResult>? _answersList;
  List<AnswerTypeResult>? get answersList => _answersList;

  CountourQuestionsNotifier(this._apiClient) : super(const DefaultState.loading()) {
    init();
  }

  init() {
    state = const DefaultState.loading();
    _apiClient.getQuestions().then((value) {
      _tryCount = 3;
      _answerTypeResult = AnswerTypeResult.none;
      _currentQuestionIndex = 0;
      _questions = value.result;
      _answersList = value.result.map((e) => AnswerTypeResult.none).toList();
      state = DefaultState.data(value.result);
    });
  }

  void nextQuestion() {
    _currentQuestionIndex++;
    _answerTypeResult = AnswerTypeResult.none;
    state = DefaultState.data([..._questions!]);
  }

  void checkAnswer(String answer) {
    if (answer == _questions![_currentQuestionIndex].correctName) {
      {
        _answersList![_currentQuestionIndex] = AnswerTypeResult.right;
        _answerTypeResult = AnswerTypeResult.right;
        state = DefaultState.data([..._questions!]);
      }
    } else {
      _tryCount--;
      _answersList![_currentQuestionIndex] = AnswerTypeResult.wrong;
      _answerTypeResult = AnswerTypeResult.wrong;
      state = DefaultState.data([..._questions!]);
    }
  }
}
