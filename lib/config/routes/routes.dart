import 'package:flutter/material.dart';

import '../../app_state.dart';

import '../../presentation/pages/tabs_page/tabs_page.dart';
import '../../presentation/pages/login_page/login_page.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [const MaterialPage(child: TabsPage())];
    case AppStatus.unauthenticated:
      return [const MaterialPage(child: LoginPage())];
  }
}
