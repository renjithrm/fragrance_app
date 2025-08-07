import 'package:dio/dio.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/models/base_response/base_response.dart';
import 'package:fragrance_app/services/base_api_service.dart';
import 'package:fragrance_app/services/shared_preferences_service.dart';

class AuthService {
  final _baseService = locator<BaseApiService>();
  final _preference = locator<SharedPreferencesService>();

  Future<(bool, String)> anonymousLogin() async {
    try {
      final response = await _baseService.post(
          '/fragrance-b2b-backend/api/v1/anonymous-login',
          body: {'device_token': 'test_token', 'device_type': 1});
      final baseRes = BaseResponse.fromJson(response.data);
      if (baseRes.errorCode == 0) {
        await _preference.saveAuthToken(response.data['data']['access_token']);
        return (true, "Login Successfully!!");
      } else {
        return (false, "Something went wrong!!");
      }
    } on DioException catch (e) {
      print(e.toString());
      return (false, "Something went wrong!!");
    }
  }
}
