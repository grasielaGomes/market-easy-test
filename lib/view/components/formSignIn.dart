import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';
import 'package:mkt_easy_test/view/components/inputText.dart';

class FormSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.2,
      child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(kInstructionSignIn, style: kSubtitleStyle),
              InputTextRound(label: kUserSignIn, icon: Icons.person_outline_rounded),
              InputTextRound(label: kPasswordSignIn, icon: Icons.lock_outline,)
            ],
      )),
    );
  }
}
