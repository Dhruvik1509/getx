
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import '../../../models/login/UserResponesModel.dart';

class UserPreferenc{

  Future<bool> SaveUser(UserResponesModel responesModel)async{
    final SharedPreferences _preferences = await SharedPreferences.getInstance();

    _preferences.setString('token', responesModel.token.toString());

    return true;
  }

  Future<UserResponesModel> GetUser()async{
    final SharedPreferences _preferences = await SharedPreferences.getInstance();

    String? Token = _preferences.getString('token');

    return UserResponesModel(token: Token);
  }

  Future<bool> removeUSer() async {

    final SharedPreferences _preferences = await SharedPreferences.getInstance();

    _preferences.clear();
    return true;

  }

}