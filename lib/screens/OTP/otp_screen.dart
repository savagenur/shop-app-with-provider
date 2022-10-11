import 'package:flutter/material.dart';
import 'package:shop_app/screens/OTP/components/body.dart';
import 'package:shop_app/size_config.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/otp';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO delete SizeConfig().init(context);
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTP Verification",
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
