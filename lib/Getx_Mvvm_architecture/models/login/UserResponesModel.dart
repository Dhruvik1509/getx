import 'dart:convert';

/// token : "QpwL5tke4Pnpja7X4"
class UserResponesModel {
  String? _token;

  UserResponesModel({
    String? token,}) {
    _token = token;
  }

  UserResponesModel.fromJson(dynamic json) {
    _token = json['token'];
  }


  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    return map;
  }

}