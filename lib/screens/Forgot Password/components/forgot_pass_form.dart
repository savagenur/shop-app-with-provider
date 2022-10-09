import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/screens/Login%20Success/login_success_screen.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "Enter your email",
                label: Text("Email"),
                suffixIcon: CustomSuffixIcon(
                  svgIcon: "assets/icons/Mail.svg",
                )),
            onSaved: (newValue) {
              email = newValue!;
            },
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
                return '';
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
                return '';
              } else if (errors.isNotEmpty) {
                return '';
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * .1,
          ),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routName);
                }
              }),
          SizedBox(
            height: SizeConfig.screenHeight * .1,
          ),
          const NoAccountText(),
          SizedBox(
            height: SizeConfig.screenHeight * .1,
          ),
        ],
      ),
    );
  }
}
