import 'package:flutter/material.dart';
import 'package:shop_app/screens/Login%20Success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routName = '/login-success';
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Success",style: Theme.of(context).textTheme.headline6,),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
