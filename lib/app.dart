import 'package:bottom_navigation_poc/main_router.dart';
import 'package:flutter/material.dart';

final router = MainRouter();

const appLoader = Scaffold(
  body: Center(
    child: CircularProgressIndicator(),
  ),
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bottom Navigation POC',
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      builder: (context, appContent) {
        return appContent ?? appLoader;
      },
    );
  }
}
