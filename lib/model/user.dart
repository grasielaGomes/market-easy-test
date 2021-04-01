import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier{

  String token = '';
  User(this.token);

  User.fromJson(String value){
    token = value;
    notifyListeners();
  }
}