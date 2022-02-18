import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const nameRoute = 'Settings';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
