import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get devices width and height
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
        )
      ],
    );
  }
}
