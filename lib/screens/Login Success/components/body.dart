import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * .04,
          ),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * .4,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * .08,
          ),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * .6,
            child: DefaultButton(
              text: "Back to home",
              press: () {},
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
