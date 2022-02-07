import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/screens/details/details_screen.dart';
import 'package:fruit_app/screens/home/components/recommend_card.dart';

import 'feature_card.dart';

class FeatureBlock extends StatelessWidget {
  const FeatureBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FeatureCard(
              imageUrl: "assets/images/bottom_img_1.png",
              price: 100,
              title: "abc",
              subTitle: "Russia",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
            ),
            FeatureCard(
              imageUrl: "assets/images/bottom_img_1.png",
              price: 100,
              title: "abc",
              subTitle: "Russia",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
            ),
            FeatureCard(
              imageUrl: "assets/images/bottom_img_1.png",
              price: 100,
              title: "abc",
              subTitle: "Russia",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
            ),
          ],
        ));
  }
}
