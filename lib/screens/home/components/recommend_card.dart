import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class RecommendCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? subTitle;
  final int price;
  final Function onPress;
  const RecommendCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.subTitle,
    required this.price,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: Column(
        children: [
          Image.asset(imageUrl),
          GestureDetector(
            onTap: () {
              onPress();
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.22),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "${title}\n".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: subTitle?.toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor.withOpacity(0.30)),
                    ),
                  ])),
                  const Spacer(),
                  Text(
                    "${price.toString()}\$",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor.withOpacity(0.9)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
