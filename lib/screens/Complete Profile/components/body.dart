
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/Complete%20Profile/components/complete_profile_form.dart';
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
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            const Text(
              "Complete your details or continue\nwith social media",
              textAlign: TextAlign.center,
            )
            ,
            SizedBox(height: SizeConfig.screenHeight*.05,),
            const CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30),)
            ,
            Text("By continuing your confirm that you agree\nwith our Terms and Conditions",
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}

