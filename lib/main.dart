import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geo_app/geo_app.dart';

import 'core/util/bloc_observer.dart';
import 'data/repository/auth_implementation.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final authenticationRepository = AuthRepositoryImplementation();
  await authenticationRepository.user.first;
  runApp(ProviderScope(
    child: GeoApp(
      authRepository: authenticationRepository,
    ),
  ));
}
