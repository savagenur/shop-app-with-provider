import 'package:flutter/material.dart';
import 'package:shop_app/screens/Complete%20Profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = '/complete-profile';
  const CompleteProfileScreen({super.key});

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
