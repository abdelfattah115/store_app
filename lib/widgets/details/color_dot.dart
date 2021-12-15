import 'package:flutter/material.dart';
import 'package:store_app/shared/constents.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({Key? key, required this.fillColor,  this.isSelect = false}) : super(key: key);

  final Color fillColor;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding/2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelect ? kTextLightColor:Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
