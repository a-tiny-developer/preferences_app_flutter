import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _preferences;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _sex = 1;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static String get name {
    return _preferences.getString('name') ?? _name;
  }

  static set name(String value) {
    _name = value;
    _preferences.setString('name', value);
  }

  static bool get isDarkMode {
    return _preferences.getBool('darkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _preferences.setBool('darkMode', value);
  }

  static int get sex {
    return _preferences.getInt('sex') ?? _sex;
  }

  static set sex(int value) {
    _sex = value;
    _preferences.setInt('sex', value);
  }
}
