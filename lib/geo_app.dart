import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_bloc.dart';
import 'config/routes/router.dart';
import 'domain/repository/auth_repository.dart';

class GeoApp extends StatefulWidget {
  final AuthRepository authRepository;
  const GeoApp({super.key, required this.authRepository});

  @override
  State<GeoApp> createState() => _GeoAppState();
}

class _GeoAppState extends State<GeoApp> {
  @override
  void initState() {
    super.initState();
    CustomRouter.setupRouter();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: widget.authRepository),
      ],
      child: BlocProvider(
        create: (_) => AppBloc(authenticationRepository: widget.authRepository),
        child: MaterialApp(
          title: 'Geo App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            listTileTheme: const ListTileThemeData(
              tileColor: Color.fromRGBO(246, 247, 249, 1),
            ),
            useMaterial3: true,
          ),
          onGenerateRoute: CustomRouter.router.generator,
        ),
      ),
    );
  }
}
