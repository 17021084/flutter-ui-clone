// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constant.dart';
import 'package:fruit_app/screens/home/components/recommend_card.dart';
import 'package:fruit_app/screens/home/components/title_with_button.dart';

import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get devices width and height
    Size size = MediaQuery.of(context).size;

    // scolleable container
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSeachBox(size: size),
          TitleWithButton(
            title: "Top Recommends",
            onPress: () {},
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendCard(
                    imageUrl: "assets/images/image_1.png",
                    price: 100,
                    title: "abc",
                    subTitle: "Russia",
                    onPress: () {},
                  ),
                  RecommendCard(
                    imageUrl: "assets/images/image_1.png",
                    price: 100,
                    title: "abc",
                    subTitle: "Russia",
                    onPress: () {},
                  ),
                  RecommendCard(
                    imageUrl: "assets/images/image_1.png",
                    price: 100,
                    title: "abc",
                    subTitle: "Russia",
                    onPress: () {},
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
