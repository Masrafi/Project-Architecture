import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferences? _preferences;

  // Initialize SharedPreferences
  static Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Save a boolean value to SharedPreferences
  static Future<void> saveBool(String key, bool value) async {
    await _preferences?.setBool(key, value);
  }

  // Retrieve a boolean value from SharedPreferences
  static bool getBool(String key, {bool defaultValue = false}) {
    return _preferences?.getBool(key) ?? defaultValue;
  }

  // Save a string value to SharedPreferences
  static Future<void> saveString(String key, String value) async {
    await _preferences?.setString(key, value);
  }

  // Retrieve a string value from SharedPreferences
  static String getString(String key, {String defaultValue = ''}) {
    return _preferences?.getString(key) ?? defaultValue;
  }

  // Save an integer value to SharedPreferences
  static Future<void> saveInt(String key, int value) async {
    await _preferences?.setInt(key, value);
  }

  // Retrieve an integer value from SharedPreferences
  static int getInt(String key, {int defaultValue = 0}) {
    return _preferences?.getInt(key) ?? defaultValue;
  }

  // Save a double value to SharedPreferences
  static Future<void> saveDouble(String key, double value) async {
    await _preferences?.setDouble(key, value);
  }

  // Retrieve a double value from SharedPreferences
  static double getDouble(String key, {double defaultValue = 0.0}) {
    return _preferences?.getDouble(key) ?? defaultValue;
  }

  // Remove a value from SharedPreferences
  static Future<void> remove(String key) async {
    await _preferences?.remove(key);
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SharedPreferencesService.initialize();
//
//   // Save data
//   SharedPreferencesService.saveString('username', 'JohnDoe');
//   SharedPreferencesService.saveInt('userAge', 25);
//   SharedPreferencesService.saveBool('isLoggedIn', true);
//
//   // Retrieve data
//   String username = SharedPreferencesService.getString('username');
//   int userAge = SharedPreferencesService.getInt('userAge');
//   bool isLoggedIn = SharedPreferencesService.getBool('isLoggedIn');
//
//   print('Username: $username, Age: $userAge, Logged In: $isLoggedIn');
// }
