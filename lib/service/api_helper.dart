import 'package:dio/dio.dart';

class ApiHelper {
  static final Dio _dio = Dio();

  static Future<dynamic> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      return e;
    }
  }

  static Future<dynamic> post(String path,
      Map<String, dynamic> data) async {
    try {
      final response = await _dio.get(path, data: data);
      return response;
    } on DioError catch (e) {
      return e;
    }
  }

  static Future<dynamic> delete(String path,
      Map<String, dynamic> data) async {
    try {
      final response = await _dio.get(path, data: data);
      return response;
    } on DioError catch (e) {
      return e;
    }
  }
}
