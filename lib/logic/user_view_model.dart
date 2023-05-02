import 'package:flutter/material.dart';
import 'package:flutter_dio/model/user_model.dart';
import 'package:flutter_dio/service/api/news_list_api.dart';

class UserViewModel extends ChangeNotifier {
  final UserApi _userApi = UserApi();

  List<UserModel>? userModel;
  bool isLoading = false;

  Future<void> fetchData() async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await _userApi.getUserList();
      final data = response.data['data'] as List<dynamic>;
      print(data);
      userModel = data.map((item) => UserModel.fromJson(item)).toList();
    } catch (e) {
      print('Error fetching user data: $e');
    }

    isLoading = false;
    notifyListeners();
  }
}
