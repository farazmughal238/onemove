// ignore_for_file: prefer_const_constructors, must_be_immutable
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:onemove/Utills/Themes/app_colors.dart';

Widget AppText(
    {required String text,
    double size = 20,
    TextDecoration underLine = TextDecoration.none,
    TextAlign textAlign = TextAlign.left,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = "Grold",
    int? maxline,
    TextOverflow? overflow,
    Color color = Colors.black,
    TextStyle? style}) {
  return Text(
    text,
    textAlign: textAlign,
    maxLines: maxline,
    style: style ??
        TextStyle(
            fontSize: size,
            decoration: underLine,
            overflow: overflow,
            fontWeight: fontWeight,
            color: color,
            fontFamily: fontFamily),
  );
}

Widget AppTextButton(
    {required String text,
    double size = 20,
    TextDecoration underLine = TextDecoration.none,
    TextAlign textAlign = TextAlign.left,
    FontWeight fontWeight = FontWeight.w400,
    Color color = Colors.black,
    required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          decoration: underLine,
          fontSize: size,
          fontWeight: fontWeight,
          color: color),
    ),
  );
}

class HyperTxt extends StatelessWidget {
  String text = '';
  double? size;
  Color? color;
  TextAlign? align = TextAlign.center;
  bool? bold = false;
  Function? onTap;
  HyperTxt({
    Key? key,
    required this.onTap,
    required this.text,
    this.bold,
    this.align,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        overflow: TextOverflow.fade,
        textAlign: align,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: bold == true ? FontWeight.w800 : FontWeight.w200,
        ),
      ),
    );
  }
}

class MultiTxt extends StatelessWidget {
  String firstText;
  String? secondText;
  Color firstColor;
  String firstTextfontFamily;
  String secondTextfontFamily;
  MultiTxt({
    Key? key,
    required this.firstText,
    this.secondText,
    this.firstTextfontFamily = "Light Grold",
    this.secondTextfontFamily = "Light Grold",
    this.firstColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(
                color: firstColor,
                fontSize: 15,
                fontFamily: firstTextfontFamily),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
                fontSize: 15,
                color: AppColors.BLACK_COLOR,
                fontFamily: secondTextfontFamily),
          ),
        ],
      ),
    );
  }
}
