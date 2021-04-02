import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mkt_easy_test/model/user.dart';
import 'package:mkt_easy_test/services/api.dart';

class AuthController extends ChangeNotifier{
  static String user = '';
  static String password = '';
  String accessToken = '';
  String message = '';
  bool loading = false;

  final API api = API();

  void paramsToMap({required String userValue, required String passwordValue}){
    user = userValue;
    password = passwordValue;
    notifyListeners();
  }

  Future<http.Response> authUser() async {
    Map<String, dynamic> params = {
      'usuario': user,
      'senha': password
    };

    final response = await http
        .post(api.tokenUri(),
        headers: {"content-type": "application/json"},
        body: json.encode(params));

    return response;
  }


  Future<String> getAccessToken() async {
    loading = true;
    notifyListeners();

    final response = await authUser();
    if (response.statusCode == 200) {
      Map data = json.decode(response.body);
      String status = data['response']['status'];
      if(status == 'ok'){
        accessToken = data['response']['token'];
        User.fromJson(accessToken);
        message = 'ok';
        print(data);
        notifyListeners();
      } else {
        message = data['response']['messages'][0]['message'];
      }
    }
    loading = false;
    notifyListeners();
    return message;
  }
  

}
