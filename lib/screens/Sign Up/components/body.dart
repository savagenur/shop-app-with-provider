import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/Sign%20Up/components/sign_up_form.dart';
import 'package:shop_app/size_config.dart';

import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * .02,
            ),
            Text(
              "Register Account",
              style: headingStyle,
            ),
            const Text(
              "Complete your details or continue\nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * .07,
            ),
            SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight * .07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
          SizedBox(height: getProportionateScreenHeight(20),),
          const Text("By continuing your confirm that you agree\nwith our Term and Condition",textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
