import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkt_easy_test/view/components/constants.dart';
import 'package:mkt_easy_test/view/components/formSignIn.dart';
import 'components/iconSignIn.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //Allow just portrait orientation
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.1, vertical: width * 0.15),
          decoration: kDarkGradientContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconSignIn(),
              Flexible(
                child: FormSignIn(),
              ),
              Text(
                kForgotPasswordSignIn,
                style: kBodyStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
