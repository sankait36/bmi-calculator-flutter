import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String textContent;

  IconContent({this.iconData, this.textContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}