import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx/Getx_Mvvm_architecture/data/app_exceptions.dart';
import 'package:getx/Getx_Mvvm_architecture/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiScrevices extends BaseapiServices {
  @override
  Future getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(Duration(seconds: 10));
      responseJson = returnRespones(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOutException {
      throw RequestTimeOutException();
    }
    return responseJson;
  }

  dynamic returnRespones(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responesJson = jsonDecode(response.body);
        return responesJson;
      case 400:
        dynamic responesJson = jsonDecode(response.body);
        return responesJson;
      default:
        throw FetchDataException();
    }
  }

  @override
  Future postapi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(Duration(seconds: 10));
      responseJson = returnRespones(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOutException {
      throw RequestTimeOutException();
    }
    print(responseJson);
    return responseJson;
  }
}
