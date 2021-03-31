import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';
import 'package:mkt_easy_test/view/components/iconLogin.dart';
import 'package:mkt_easy_test/view/components/roundBackgroundBox.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(decoration: kDarkGradientContainer),
          RoundBackgroundBox(),
          IconLogin()
        ],
      ),
    );
  }
}
