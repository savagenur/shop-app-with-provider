import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/OTP/components/otp_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:SizeConfig.screenHeight*.05),
        
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text(
                "We sent your code to +1 898 860 ***",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(height:SizeConfig.screenHeight*.15),
        
              const OptForm(),
              SizedBox(height:SizeConfig.screenHeight*.1),
              GestureDetector(
                onTap: () {
                  // Todo do something
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "This code will expired in ",
          textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) {
            var seconds = value.toString().split('.')[0];
            return Text(
              '00:$seconds',
              style: const TextStyle(color: kPrimaryColor),
            );
          },
          onEnd: () {},
        )
      ],
    );
  }
}

