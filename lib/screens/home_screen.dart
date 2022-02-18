import 'package:flutter/material.dart';
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
        children: const [
          Text('Dark Mode:'),
          Divider(),
          Text('Sex: '),
          Divider(),
          Text('Name: '),
        ],
      ),
    );
  }
}
