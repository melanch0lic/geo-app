import 'package:fluro/fluro.dart';
import 'package:geo_app/presentation/pages/class_detail_page/class_detail_page.dart';

import '../../presentation/pages/empty_route_page/empty_route_page.dart';
import '../../presentation/pages/home_page/home_page.dart';
import '../../presentation/pages/login_page/login_page.dart';
import '../../presentation/pages/tabs_page/tabs_page.dart';

class CustomRouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _emptyHandler = Handler(handlerFunc: (context, parameters) => const EmptyRoutePage());
  static final Handler _tabsHandler = Handler(handlerFunc: (context, parameters) => const TabsPage());
  static final Handler _homeHandler = Handler(handlerFunc: (context, parameters) => const HomePage());
  static final Handler _loginHandler = Handler(handlerFunc: (context, parameters) => const LoginPage());
  static final Handler _classDetailHandler =
      Handler(handlerFunc: (context, parameters) => ClassDetailPage(id: int.parse(parameters['name']![0])));

  static void setupRouter() {
    router.define('/', handler: _emptyHandler, transitionType: TransitionType.fadeIn);
    router.define('/tabs', handler: _tabsHandler, transitionType: TransitionType.fadeIn);
    router.define('/tabs/home', handler: _homeHandler, transitionType: TransitionType.fadeIn);
    router.define('/login', handler: _loginHandler, transitionType: TransitionType.fadeIn);
    router.define('/tabs/class_detail/:name', handler: _classDetailHandler, transitionType: TransitionType.fadeIn);
  }
}
