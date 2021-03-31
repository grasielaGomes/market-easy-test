import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';

class IconSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: width * 0.33,
      width: width * 0.33,
      child: Image(image: AssetImage(kIconSignIn)),
    );
  }
}

//top: height * 0.22,
//       left: width * 0.37,