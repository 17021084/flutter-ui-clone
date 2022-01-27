import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class TitleWithButton extends StatelessWidget {
  final String title;
  final Function onPress;
  const TitleWithButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
              child: TitleWithCustomUnderLine(
            title: title,
          )),
          FlatButton(
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {
                onPress();
              },
              child:
                  const Text("View All", style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  final String title;
  const TitleWithCustomUnderLine({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: kPrimaryColor.withOpacity(0.2), width: 5)),
              ),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
