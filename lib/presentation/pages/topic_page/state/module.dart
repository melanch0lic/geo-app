import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/core/util/default_state/default_state.dart';
import 'package:geo_app/presentation/pages/topic_page/state/countour_questions_notifier.dart';

import '../../../../data/data_sources/api_client.dart';
import '../../../../data/models/question_country_model.dart';

final StateProvider selectedQuestionIndexProvider = StateProvider<int>((ref) {
  return 2;
});

final StateNotifierProvider<CountourQuestionsNotifier, DefaultState<List<QuestionCountryModel>>>
    countourQuestionsProvider = StateNotifierProvider((ref) {
  final apiClient = ref.read(apiClientProvider);
  return CountourQuestionsNotifier(apiClient)..init();
});
