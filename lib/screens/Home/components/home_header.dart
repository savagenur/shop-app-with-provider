import 'package:flutter/material.dart';
import 'package:shop_app/screens/Home/components/search_field.dart';

import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchField(),
        IconBtnWithCounter(
          press: () {},
          svgSrc: "assets/icons/Cart Icon.svg",
        ),
        IconBtnWithCounter(
          numOfItems: 3,
          press: () {},
          svgSrc: "assets/icons/Bell.svg",
        ),
      ],
    );
  }
}