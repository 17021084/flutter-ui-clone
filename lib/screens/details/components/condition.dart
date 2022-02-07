import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'details_image.dart';
import 'icon_cards.dart';

class Condition extends StatelessWidget {
  const Condition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                const IconCard(svgSrc: "assets/icons/sun.svg"),
                const IconCard(svgSrc: "assets/icons/icon_2.svg"),
                const IconCard(svgSrc: "assets/icons/icon_3.svg"),
                const IconCard(svgSrc: "assets/icons/icon_4.svg"),
              ],
            ),
          )),
          const DetailsImage(image: "assets/images/img.png"),
        ],
      ),
    );
  }
}
