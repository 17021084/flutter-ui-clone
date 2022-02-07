import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constant.dart';

class IconCard extends StatelessWidget {
  final String svgSrc;
  const IconCard({
    Key? key,
    required this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding / 4),
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: kPrimaryColor.withOpacity(0.22),
              blurRadius: 20,
              offset: const Offset(0, 10)),
          const BoxShadow(color: Colors.black12, blurRadius: 20),
        ],
      ),
      child: SvgPicture.asset(
        svgSrc,
        color: kPrimaryColor,
      ),
    );
  }
}
