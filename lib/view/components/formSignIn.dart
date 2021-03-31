import 'package:flutter/material.dart';
import 'package:mkt_easy_test/view/components/constants.dart';
import 'package:mkt_easy_test/view/components/inputText.dart';
import 'package:mkt_easy_test/view/components/roundButton.dart';

class FormSignIn extends StatelessWidget {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.4,
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(kInstructionSignIn, style: kSubtitleStyle),
              InputTextRound(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return kEntryMandatory;
                    }
                    return null;
                  },
                  label: kUserSignIn,
                  icon: Icons.person_outline_rounded,
                  controller: _user,
              ),
              InputTextRound(
                  validator: (String? value){
                    if (value!.isEmpty){
                      return kEntryMandatory;
                    } else if (value.length < 6){
                      return kShortPassword;
                    }
                  },
                  label: kPasswordSignIn,
                  icon: Icons.lock_outline,
                  controller: _password,
                  obscure: true,
              ),
              SizedBox(height: height * 0.01),
              RoundButton(
                  color: kPrimaryColor,
                  text: kButtonSignIn.toUpperCase(),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      String user = _user.text;
                      String password = _password.text;
                      print('usuário: $user senha: $password');
                    }
                  }),
            ],
      )),
    );
  }

}
