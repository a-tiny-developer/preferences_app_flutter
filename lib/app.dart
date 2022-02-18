import 'package:flutter/material.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class PreferencesApp extends StatelessWidget {
  const PreferencesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PreferencesApp",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRoute,
      routes: AppRoutes.getAppRoutes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
