import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';

class InputTextRound extends StatelessWidget {
  final IconData icon;
  final String label;


  InputTextRound({this.icon = Icons.lock_outline, this.label = 'label'});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: label,
          labelStyle: kLabelStyle,
          prefixIcon: Icon(icon, color: kNeonBlue,),
          enabledBorder: kEnabledBorder,
          focusedBorder: kFocusedBorder,
          errorBorder: kErrorBorder,
          focusedErrorBorder: kFocusedErrorBorder,
          disabledBorder: kDisabledBorder
      ),
    );
  }
}
