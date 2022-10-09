import 'package:flutter/material.dart';
import 'package:shop_app/screens/Forgot%20Password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot-password';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text("Forgot Password", style: Theme.of(context).textTheme.headline6,),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
