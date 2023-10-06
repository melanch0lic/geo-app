import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider selectedQuestionIndexProvider = StateProvider<int>((ref) {
  return 2;
});
