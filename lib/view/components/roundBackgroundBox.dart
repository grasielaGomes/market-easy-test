import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';

class RoundBackgroundBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.only(topLeft: kBoxRadius, topRight: kBoxRadius),
          boxShadow: [
            BoxShadow(offset: Offset(0, 5), blurRadius: 30, color: kShadow)
          ]),
    );
  }
}
