import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//COLORS
const Color kDarkPurple = Color(0xFF44336C);
const Color kDarkPink = Color(0xFF6C3E63);
const Color kShadow = Colors.black26;

//GRADIENTS
final BoxDecoration kDarkGradientContainer = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [kDarkPurple, kDarkPink]));

//RADIUS
const Radius kBoxRadius = Radius.circular(20);
