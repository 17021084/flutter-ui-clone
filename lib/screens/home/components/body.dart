import 'package:flutter/material.dart';

import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get devices width and height
    Size size = MediaQuery.of(context).size;

    // scolleable container
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[HeaderWithSeachBox(size: size)],
      ),
    );
  }
}
