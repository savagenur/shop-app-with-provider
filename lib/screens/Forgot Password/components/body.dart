import 'package:flutter/material.dart';
import 'package:shop_app/screens/Forgot%20Password/components/forgot_pass_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*.04,),
      
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Please enter your email and we will send\nyou a link to return to your account.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight*.1,),
      
            const ForgotPassForm(),
          ],
        ),
      ),
    );
  }
}

