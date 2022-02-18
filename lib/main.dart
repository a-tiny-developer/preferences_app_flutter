import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/preferences/preferences.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const PreferencesApp());
}
