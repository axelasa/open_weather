import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../constants/constant.dart';
import 'auth_interceptor.dart';
import 'error_handler.dart';

class DioClient{
  static BaseOptions options = BaseOptions(
    baseUrl:baseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  );
  final Dio _dio = Dio(options)..interceptors.add(AuthInterceptor());

  Future<dynamic>get(
      String uri,{
        Map<String,dynamic>? queryParameters,
        Options? options,
        ProgressCallback? onReceiveProgress,
      })async{
    try{
      final Response response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        onReceiveProgress: onReceiveProgress,
      );
      debugPrint(response.statusCode.toString());
      return response.data;
    }on DioException catch(e){
      var error = ErrorHandler.fromDioError(e);
      throw error.errorMessage;
    }
  }
}