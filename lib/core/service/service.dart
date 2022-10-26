import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mock_api/core/constants/app_const.dart';
import 'package:mock_api/core/model/user.dart';

class AppService {
  List<User> users = [];

  Future<List<User>?> getUsers() async {
    try {
      var response = await Dio().get("${AppConsts.baseUrl}/users");

      if (response.statusCode == 200) {
        for (var element in response.data) {
          users.add(User.fromJson(element));
        }
        return users;
      }
    } catch (_) {
      Fluttertoast.showToast(msg: AppConsts.errorText);
    }
    return null;
  }
}
