import 'package:flutter/material.dart';
import 'package:shop_app/screens/Home/components/section_title.dart';

import 'package:shop_app/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              const HomeHeader(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              const DiscountBanner(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              const Categories(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              SectionTitle(
                press: () {},
                text: "Special for you",
              ),
              SizedBox(
                width: getProportionateScreenWidth(242),
                height: getProportionateScreenWidth(100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/Image Banner 2.png",
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF343434).withOpacity(0.4),
                              const Color(0xFF343434).withOpacity(0.4),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(15),
                          vertical: getProportionateScreenWidth(10),
                        ),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "Smartphone\n",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(18),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(text: "18 Brands"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
