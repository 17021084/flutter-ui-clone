import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: kPrimaryColor.withOpacity(0.30),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/flower.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/user-icon.svg'))
        ],
      ),
    );
  }
}
