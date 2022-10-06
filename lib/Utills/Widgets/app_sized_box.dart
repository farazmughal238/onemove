import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onemove/Utills/Themes/app_colors.dart';

Widget verticalSizedBox({required double height}) {
  return SizedBox(
    height: Get.height / height,
  );
}

Widget horizantalSizedBox({required double width}) {
  return SizedBox(
    width: Get.width / width,
  );
}

Widget appDivider({double? height}) {
  return Container(
    height: height != null ? Get.height / height : Get.height / 57,
    width: Get.width,
    color: AppColors.GREY_COLOR.withOpacity(.2),
  );
}
