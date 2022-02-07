import 'package:flutter/cupertino.dart';
import 'package:fruit_app/screens/home/components/recommend_card.dart';

class RecommendBlock extends StatelessWidget {
  const RecommendBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        ));
  }
}
