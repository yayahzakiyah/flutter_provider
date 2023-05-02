import 'package:flutter_dio/service/api_helper.dart';
import 'package:flutter_dio/service/endpoint.dart';

class UserApi {
  Future<dynamic> getUserList() async {
    try {
      final response = await ApiHelper.get(Endpoints.user_list);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
