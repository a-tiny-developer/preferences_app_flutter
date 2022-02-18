import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                HomeScreen.routeName,
              );
            },
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.people_outline),
            title: const Text('People'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                SettingsScreen.routeName,
              );
            },
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      child: SizedBox(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/menu-img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
