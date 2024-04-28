import 'package:flutter/material.dart';
import 'package:workspace/presentation/resources/routes_manager.dart';
import 'package:workspace/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  /// Private named constructor:
  /// This named constructor which means I will create instance
  /// for this class, but this instance should be private.
  MyApp._internal();

  int appState = 0; // testing for singleton

  static final MyApp instance = MyApp._internal(); // singleton

  factory MyApp() =>
      instance; // factory for creating the singleton class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hidden the top right debug banner
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
