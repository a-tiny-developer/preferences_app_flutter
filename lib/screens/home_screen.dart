import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/preferences/preferences.dart';
import 'package:preferences_app_flutter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Dark Mode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Sex: ${Preferences.sex}'),
          const Divider(),
          Text('Name: ${Preferences.name}'),
          const Divider(),
        ],
      ),
    );
  }
}
