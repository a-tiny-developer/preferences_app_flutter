import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/preferences/preferences.dart';
import 'package:preferences_app_flutter/providers/providers.dart';
import 'package:provider/provider.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class PreferencesApp extends StatelessWidget {
  const PreferencesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(
            isDarkMode: Preferences.isDarkMode,
          ),
        ),
      ],
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PreferencesApp",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRoute,
      routes: AppRoutes.getAppRoutes,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
