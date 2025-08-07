import 'package:dio/dio.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/services/shared_preferences_service.dart';

class BaseApiService {
  final Dio dio = Dio()
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 10)
    ..options.sendTimeout = const Duration(seconds: 10)
    ..interceptors.add(LogInterceptor(responseBody: false));

  final _preference = locator<SharedPreferencesService>();

  final _baseUrl = 'https://s419.previewbay.com';

  /// Generic GET request
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final response = await dio.get(
      '$_baseUrl$url',
      queryParameters: queryParameters,
      options: Options(
        headers: headers ?? await _defaultHeaders(),
      ),
    );
    return response;
  }

  /// Generic POST request
  Future<Response> post(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    final response = await dio.post(
      '$_baseUrl$url',
      data: body,
      options: Options(
        headers: headers ?? await _defaultHeaders(),
      ),
    );
    return response;
  }

  /// Get default headers (e.g. with auth token)
  Future<Map<String, String>> _defaultHeaders() async {
    final token = _preference.authToken;

    return {
      'Content-Type': 'application/json',
      if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
    };
  }
}
