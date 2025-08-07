import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const _authTokenKey = 'auth_token';

  SharedPreferences? _preferences;

  /// Initialize the service (call this before using it)
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  /// Save auth token
  Future<void> saveAuthToken(String token) async {
    await _preferences?.setString(_authTokenKey, token);
    debugPrint("token saved successfully");
  }

  /// Get auth token
  String? get authToken => _preferences?.getString(_authTokenKey);

  /// Clear auth token
  Future<void> clearAuthToken() async {
    await _preferences?.remove(_authTokenKey);
  }

  /// Check if token exists
  bool get hasAuthToken => _preferences?.containsKey(_authTokenKey) ?? false;
}
