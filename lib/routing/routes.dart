import 'package:flutter/widgets.dart';
import '../pages/splash/splash_page.dart';
import '../pages/home/home_page.dart';
import '../pages/info/info_page.dart';

class Routes {
  static const String splash = '/';
  static const String home = '/home';
  static const String info = '/info';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => const SplashPage(),
      home: (context) => const HomePage(),
      info: (context) => const InfoPage(),
    };
  }
}
