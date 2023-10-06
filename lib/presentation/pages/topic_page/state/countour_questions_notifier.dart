import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/data/data_sources/api_client.dart';
import 'package:geo_app/data/models/question_country_model.dart';

import '../../../../core/util/default_state/default_state.dart';

class CountourQuestionsNotifier extends StateNotifier<DefaultState<List<QuestionCountryModel>>> {
  final ApiClient _apiClient;

  List<bool>? _answersList;
  List<bool>? get answersList => _answersList;

  CountourQuestionsNotifier(this._apiClient) : super(const DefaultState.loading()) {
    init();
  }

  init() {
    state = const DefaultState.loading();
    _apiClient.getQuestions().then((value) {
      state = DefaultState.data(value.result);
      _answersList = value.result.map((e) => false).toList();
    });
  }
}
