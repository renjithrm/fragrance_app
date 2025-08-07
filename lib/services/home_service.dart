import 'package:dio/dio.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/models/base_response/base_response.dart';
import 'package:fragrance_app/models/home/home_response.dart';
import 'package:fragrance_app/services/base_api_service.dart';

class HomeService {
  final _baseService = locator<BaseApiService>();

  Future<HomeResponse?> fetchHome() async {
    try {
      final response = await _baseService.get(
        '/fragrance-b2b-backend/api/v1/home',
      );
      final baseRes = BaseResponse.fromJson(response.data);
      if (baseRes.errorCode == 0) {
        final homeRes = HomeResponse.fromJson(response.data['data']);
        return homeRes;
      } else {
        return null;
      }
    } on DioException catch (e) {
      print(e.toString());
      return null;
    }
  }
}
