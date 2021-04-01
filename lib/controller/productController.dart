import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mkt_easy_test/controller/authController.dart';
import 'package:mkt_easy_test/services/api.dart';
import 'package:mkt_easy_test/model/product.dart';

class ProductController extends ChangeNotifier{

  final API api = API();
  final AuthController authController = AuthController();

  String error = '';
  bool loading = false;
  List<Product> products = [];

  Future<List<Product>> getProducts() async {
    loading = true;
    notifyListeners();

    await authController.getAccessToken();

    List<Product> _productsList = [];

    final responseGet = await http
        .get(api.productsUri(), headers: {"content-type": "application/json", "token": authController.accessToken});
    if (responseGet.statusCode == 200) {
      Map data = json.decode(responseGet.body);
      String status = data['response']['status'];
      if(status == 'ok'){
        List _products = data['response']['produtos'];
        for(Map<String, dynamic> json in _products){
          Product p = Product.fromJson(json);
          _productsList.add(p);
        }
        notifyListeners();
      } else {
        error = data['response']['messages'][0]['message'];
      }
    } else {
      error = responseGet.reasonPhrase.toString();
      notifyListeners();
    }

    loading = false;
    products = _productsList;
    notifyListeners();
    return products;
  }
}
