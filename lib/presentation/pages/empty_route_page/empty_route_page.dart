import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_bloc.dart';
import '../../../app_state.dart';

class EmptyRoutePage extends StatelessWidget {
  const EmptyRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state.status == AppStatus.unauthenticated) {
          Navigator.pushReplacementNamed(context, '/login');
        } else {
          Navigator.pushReplacementNamed(context, '/tabs');
        }
      },
      child: Container(),
    );
  }
}
