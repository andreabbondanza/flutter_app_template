import 'package:flutter/material.dart';
import 'routing/routes.dart';
import 'themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    return MaterialApp(
        title: 'Flutter App Template',
        initialRoute: Routes.splash,
        theme: mainTheme,
        routes: Routes.getRoutes());
  }
}
