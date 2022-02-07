import 'package:flutter/material.dart';

import '../../../constant.dart';

class TitlePrice extends StatelessWidget {
  const TitlePrice({
    Key? key,
    this.price,
  }) : super(key: key);
  final int? price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "Angle\n",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextSpan(
                text: "Angle",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: size.width * 0.05,
                ))
          ])),
          const Spacer(),
          Text(
            "\$ ${price ?? 0}",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
