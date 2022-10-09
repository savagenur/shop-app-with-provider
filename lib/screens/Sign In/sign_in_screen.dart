import 'package:flutter/material.dart';
import 'package:shop_app/screens/Sign%20In/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign-in';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
      ),
      body:const Body(),
    );
  }
}
