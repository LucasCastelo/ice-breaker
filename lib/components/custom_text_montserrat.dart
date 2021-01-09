import 'package:flutter/material.dart';
import 'package:ice_breaker/constants.dart';

class CustomTextMontserrat extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final int maxLines;
  final TextOverflow overflow;

  const CustomTextMontserrat(
    this.text, {
    Key key,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Montserrat",
        fontSize: fontSize != null
            ? fontSize * MediaQuery.of(context).textScaleFactor
            : FontSize.huge * MediaQuery.of(context).textScaleFactor,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxLines ?? 99999,
      overflow: overflow ?? TextOverflow.visible,
    );
  }
}
