import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/showProducts.dart';
import 'package:mkt_easy_test/view/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market Easy Test',
      debugShowCheckedModeBanner: false,
      home: SignIn(),
      routes: {'/showProduts': (constext) => ShowProducts()},
    );
  }
}
