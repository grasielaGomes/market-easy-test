import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';

class InputTextRound extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obscure;


  InputTextRound({this.icon = Icons.lock_outline, this.label = 'label', required this.controller, required this.validator, this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: kLabelStyle,
          prefixIcon: Icon(icon, color: kNeonBlue,),
          enabledBorder: kEnabledBorder,
          focusedBorder: kFocusedBorder,
          errorBorder: kErrorBorder,
          focusedErrorBorder: kFocusedErrorBorder,
          disabledBorder: kDisabledBorder,
          errorStyle: kErrorStyle
      ),
    );
  }
}
