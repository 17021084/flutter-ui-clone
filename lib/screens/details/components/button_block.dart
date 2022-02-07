import 'package:flutter/material.dart';

import '../../../constant.dart';

class ButtonBlock extends StatelessWidget {
  const ButtonBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.5,
            height: 85,
            child: FlatButton(
              color: kPrimaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              ),
              child: const Text("Buy Now"),
              onPressed: () {},
            ),
          ),
          Expanded(
              child: FlatButton(
            onPressed: () {},
            child: const Text("Description"),
          ))
        ],
      ),
    );
  }
}
