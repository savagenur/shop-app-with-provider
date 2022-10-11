import 'package:flutter/material.dart';
import 'package:shop_app/screens/Sign%20Up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
