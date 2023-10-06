import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/data/models/responses/questions_counry_response.dart';

final Provider apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});

class ApiClient {
  Future<QuestionsCountryResponse> getQuestions() async {
    await Future.delayed(const Duration(seconds: 2));
    return QuestionsCountryResponse.fromJson({
      'result': [
        {
          'id': 1,
          'name': ['Италия', 'Германия', 'Испания', 'Франция'],
          'imageUrl': '',
          'correctName': 'Франция',
        },
        {
          'id': 2,
          'name': ['Италия', 'Германия', 'Испания', 'Франция'],
          'imageUrl': 'imageUrl',
          'correctName': 'Германия',
        },
        {
          'id': 3,
          'name': ['Италия', 'Германия', 'Испания', 'Франция'],
          'imageUrl': 'imageUrl',
          'correctName': 'Италия',
        }
      ],
      'error': null,
    });
  }
}
