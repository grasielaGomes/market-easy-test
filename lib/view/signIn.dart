import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkt_easy_test/controller/api_controller.dart';
import 'package:mkt_easy_test/view/components/constants.dart';
import 'package:mkt_easy_test/view/components/formSignIn.dart';
import 'package:mkt_easy_test/view/components/roundButton.dart';
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

  String accessToken = '';

  void _getAccessToken() async {
    final apiController = APIController();
    final token = await apiController.getAccessToken();
    setState(() => accessToken = token);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.1, vertical: width * 0.15),
          margin: EdgeInsets.only(top: height * 0.1),
          decoration: kDarkGradientContainer,
          child: Column(
            children: [
              IconSignIn(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.07),
                child: FormSignIn(),
              ),
              RoundButton(
                  color: kPrimaryColor,
                  text: kButtonSignIn.toUpperCase(),
                  onTap: () {
                    _getAccessToken();
                    print(accessToken);
                    //Navigator.pushNamed(context, '/showProducts');
                  }),
              SizedBox(height: height * 0.05),
              Text(
                kForgotPasswordSignIn,
                style: kSBodyStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
