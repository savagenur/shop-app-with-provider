import 'package:flutter/material.dart';
import 'package:shop_app/screens/Complete%20Profile/complete_profile_screen.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
   String? email;
   String? password;
   String? confirmPassword;

  List<String> errors = [];
  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
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
        // !!! When we use onChanged, use only statement (if) without (else if)
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        }
        if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }

        email = value;
      },
      validator: (value) {
        // !!! When we use validator, use only statement (else if) without (if)

        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return '';
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your password",
          label: Text("Password"),
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
      onSaved: (newValue) {
        password = newValue!;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (value.length < 8) {
          addError(error: kShortPassError);

          return '';
        }

        return null;
      },
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Re-enter your password",
          label: Text("Confirm Password"),
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
      onSaved: (newValue) {
        confirmPassword = newValue!;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.isNotEmpty && password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        confirmPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (password != value) {
          addError(error: kMatchPassError);
          return '';
        }
        return null;
      },
    );
  }
}
