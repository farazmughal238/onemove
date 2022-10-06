import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController appSnakBar({
  required String tileText,
  required String descriptionText,
  SnackPosition snackPosition = SnackPosition.BOTTOM,
  int duration = 2,
  Color textColor = Colors.white,
  Color backgroundColor = const Color(0xFF004040),
}) {
  return Get.snackbar(
    tileText,
    descriptionText,
    snackPosition: snackPosition,
    duration: Duration(seconds: duration),
    colorText: textColor,
    backgroundColor: backgroundColor,
  );
}
