import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constant.dart';

class HeaderWithSeachBox extends StatelessWidget {
  const HeaderWithSeachBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(
                kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Mina san konichiha ",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment:
                  Alignment.center, // can chinh vi chi child cua container
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.1),
                      blurRadius: 50,
                      offset: const Offset(0, 50),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  // giong nhu flex 1 trong flexbox
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        border: InputBorder.none,
                        // khong dung dc svg icon.
                        // suffixIcon: Icon(
                        //   Icons.search,
                        //   color: kPrimaryColor,
                        // ),
                      ),
                    ),
                  ),

                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
