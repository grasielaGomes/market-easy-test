import 'package:flutter/material.dart';
import 'package:mkt_easy_test/controller/api_controller.dart';
import 'package:mkt_easy_test/view/showProducts.dart';
import 'package:mkt_easy_test/view/signIn.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => APIController(),
      child: MaterialApp(
        title: 'Market Easy Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: SignIn(),
        routes: {'/showProducts': (context) => ShowProducts()},
      ),
    );
  }
}
