import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/preferences/preferences.dart';
import 'package:preferences_app_flutter/providers/providers.dart';
import 'package:preferences_app_flutter/widgets/side_menu.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const routeName = 'Settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Divider(),
            SwitchListTile.adaptive(
              value: Preferences.isDarkMode,
              title: const Text('Dark Mode'),
              onChanged: (value) {
                setState(() {
                  Preferences.isDarkMode = value;
                });
                final themeProvider =
                    Provider.of<ThemeProvider>(context, listen: false);
                value
                    ? themeProvider.setDarkMode()
                    : themeProvider.setLightMode();
              },
            ),
            RadioListTile<int>(
              value: 1,
              groupValue: Preferences.sex,
              title: const Text('Male'),
              onChanged: (value) {
                setState(() {
                  Preferences.sex = value ?? 1;
                });
              },
            ),
            const Divider(),
            RadioListTile<int>(
              value: 2,
              groupValue: Preferences.sex,
              title: const Text('Female'),
              onChanged: (value) {
                setState(() {
                  Preferences.sex = value ?? 2;
                });
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    Preferences.name = value;
                  });
                },
                initialValue: Preferences.name,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  helperText: 'User name',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
