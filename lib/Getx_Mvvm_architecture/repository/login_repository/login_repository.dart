import 'package:getx/Getx_Mvvm_architecture/data/network/network_api_services.dart';
import 'package:getx/Getx_Mvvm_architecture/res/app_url/app_url.dart';

class LoginRepository {
  final _apiservice = NetworkApiScrevices();

  Future<dynamic> loginApi(var data) async {
    dynamic respones = await _apiservice.postapi(data, AppUrl.LoginUrl);
    return respones;
  }
}
