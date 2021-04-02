import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';

class IconSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 100,
        minWidth: 100,
        maxHeight: 200,
        maxWidth: 200
      ),
      child: Image(image: AssetImage(kIconSignIn)),
    );
  }
}

//top: height * 0.22,
//       left: width * 0.37,
