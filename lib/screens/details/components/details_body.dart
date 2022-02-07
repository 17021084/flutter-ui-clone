// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit_app/constant.dart';
import 'package:fruit_app/screens/details/components/title_price.dart';

import 'button_block.dart';
import 'condition.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // có thể dùng safeview area để ko cho hiển thị lên đoạn sóng vạch kia.
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: const [
          Condition(),
          TitlePrice(price: 322),
          ButtonBlock(),
          // can add padding cho colum nua
          SizedBox(
            height: kDefaultPadding * 3,
          )
        ],
      ),
    );
  }
}
