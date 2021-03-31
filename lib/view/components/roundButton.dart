import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';


class RoundButton extends StatelessWidget {

  final String text;
  final Color color;
  final TextStyle style;
  final VoidCallback onTap;


  const RoundButton(
      {required this.text,
        this.color = kDarkPink,
        this.style = kButtonStyle,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 22),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: Colors.black.withAlpha(50),
              offset: const Offset(2.0, 2.0),
              blurRadius: 7,
            )
          ],
        ),
        child: Text(text.toUpperCase(), style: style),
      ),
    );
  }
}