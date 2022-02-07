// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constant.dart';
import 'package:fruit_app/screens/home/components/recommend_block.dart';
import 'package:fruit_app/screens/home/components/recommend_card.dart';
import 'package:fruit_app/screens/home/components/title_with_button.dart';

import 'feature_block.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get devices width and height
    Size size = MediaQuery.of(context).size;

    // scolleable container
    return SingleChildScrollView(
      physics:
          const ClampingScrollPhysics(), // disable scroll over the top of the screen
      child: Column(
        children: <Widget>[
          HeaderWithSeachBox(size: size),
          TitleWithButton(
            title: "Top Recommends",
            onPress: () {},
          ),
          RecommendBlock(),
          TitleWithButton(
            title: "Feature ",
            onPress: () {},
          ),
          FeatureBlock()
        ],
      ),
    );
  }
}
