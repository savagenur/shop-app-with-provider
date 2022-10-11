import 'package:flutter/material.dart';
import 'package:shop_app/screens/Forgot%20Password/forgot_password_screen.dart';
import 'package:shop_app/screens/Login%20Success/login_success_screen.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];
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
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  }),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ForgotPasswordScreen.routeName,
                  );
                },
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) {
        password = newValue!;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        } else if (errors.isNotEmpty) {
          return '';
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text("Password"),
        hintText: "Enter your password",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) {
        email = newValue!;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }  if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      keyboardType: TextInputType.emailAddress,
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
        }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text("Email"),
        hintText: "Enter your email",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
