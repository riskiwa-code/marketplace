import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;

  static const _keyIsLogin = 'isLogin';
  static const _keyUserRole = 'userRole';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setIsLogin(bool isLogin) async =>
      await _preferences!.setBool(_keyIsLogin, isLogin);

  static bool? getIsLogin() => _preferences!.getBool(_keyIsLogin);

  static Future setUserRole(String userRole) async =>
      await _preferences!.setString(_keyUserRole, userRole);

  static String? getUserRole() => _preferences!.getString(_keyUserRole);
}
