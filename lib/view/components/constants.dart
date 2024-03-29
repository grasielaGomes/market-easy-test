import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//COLORS
const Color kDarkestColor = Color(0xFF312946);
const Color kPrimaryColor = Color(0xFF44336C);
const Color kLightPrimaryColor = Color(0xFFF1FEFC);
const Color kDarkPink = Color(0xFF9A558E);
const Color kNeonBlue = Color(0xFF7CC4FF);
const Color kShadow = Colors.black26;

//GRADIENTS
final BoxDecoration kDarkGradientContainer = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [kDarkPink, kPrimaryColor]));

//RADIUS
const Radius kBoxRadius = Radius.circular(20);
final double kInputRadius = 30;

//ASSETS
final String kIconSignIn = 'assets/icon1.png';

//TEXTS SIGNIN
final String kHiSignIn = 'Olá!';
final String kInstructionSignIn = 'Faça seu login para entrar:';
final String kUserSignIn = 'Usuário';
final String kPasswordSignIn = 'Senha';
final String kButtonSignIn = 'Entrar';
final String kForgotPasswordSignIn = 'Esqueci minha senha';
final String kEntryMandatory = 'Campo obrigatório';
final String kShortPassword = 'Senha muito curta';

//TEXTS PRODUCTS LIST
final String kInstructionShowProducts =
    'Milhares de produtos disponíveis. Clique no ícone abaixo para listá-los.';

//TEXTSTYLES
const TextStyle kErrorStyle = TextStyle(color: kNeonBlue, fontSize: 11);

const TextStyle kLabelStyle =
    TextStyle(color: kLightPrimaryColor, fontSize: 13);

const TextStyle kTitleStyle = TextStyle(
    fontSize: 50, color: kLightPrimaryColor, fontWeight: FontWeight.bold);

const TextStyle kSubtitleStyle = TextStyle(
  fontSize: 15,
  color: kLightPrimaryColor,
);

const TextStyle kBodyStyle =
    TextStyle(fontSize: 14, color: kLightPrimaryColor, height: 1.2);

const TextStyle kButtonStyle = TextStyle(
  fontSize: 13,
  letterSpacing: 3,
  color: Colors.white,
);

const TextStyle kProductStyle = TextStyle(
  fontSize: 17,
  color: kNeonBlue,
);

const TextStyle kPriceStyle =
    TextStyle(fontSize: 20, color: kDarkPink, fontWeight: FontWeight.bold);

const TextStyle kCodeStyle = TextStyle(color: kLightPrimaryColor, fontSize: 11);

//INPUTDECORATIONS
final OutlineInputBorder kEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kInputRadius),
    borderSide: const BorderSide(width: 0.5, color: kLightPrimaryColor));

final OutlineInputBorder kFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kInputRadius),
    borderSide: const BorderSide(color: kLightPrimaryColor));

final OutlineInputBorder kErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kInputRadius),
    borderSide: const BorderSide(color: kDarkPink));

final OutlineInputBorder kFocusedErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputRadius),
  borderSide: const BorderSide(width: 0.5),
);

final OutlineInputBorder kDisabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputRadius),
  borderSide: const BorderSide(width: 0.2, color: kShadow),
);
