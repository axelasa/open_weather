import 'package:flutter/cupertino.dart';
import 'package:open_weather/constants/constant.dart';

import '../model/open_weather_model.dart';
import 'dio_client.dart';

class ApiService {
  final DioClient dio = DioClient();

  Future<OpenWeatherModel> getWeatherForecast(Map<String, dynamic> city) async {
    try {
      var response = await dio.get(baseUrl, queryParameters: city);

      debugPrint("Response From ApiService class $response");

      var responseData = OpenWeatherModel.fromJson(response);

      debugPrint('Fetch Weather Data $responseData');

      return responseData;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
