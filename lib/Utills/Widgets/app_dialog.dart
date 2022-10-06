import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:onemove/Utills/Fonts/app_dimensions.dart';
import 'package:onemove/Utills/Paddings/app_border_radius.dart';
import 'package:onemove/Utills/Themes/app_colors.dart';
import 'package:onemove/Utills/Widgets/app_text.dart';

import 'app_button.dart';

showDialog() {
  return Get.defaultDialog(
      titlePadding: EdgeInsets.zero,
      titleStyle: const TextStyle(inherit: false),
      contentPadding: EdgeInsets.zero,
      content: Column(
        children: [
          SizedBox(
              height: Get.height / 6,
              width: Get.height / 6,
              child: Lottie.asset('assets/lotifiles/errorloti.json')),
          SizedBox(
            height: Get.height / 30,
          ),
          AppText(text: "Connection Error"),
          SizedBox(
            height: Get.height / 50,
          ),
          AppButton(
              buttonName: "Try Again",
              buttonHeight: Get.height / 20,
              textSize: AppDimensions.FONT_SIZE_20,
              buttonColor: AppColors.PRIMARY_COLOR,
              textColor: AppColors.WHITE_COLOR,
              buttonRadius: AppBorderRadius.BORDER_RADIUS_25,
              onTap: () {
                Get.back();
              }),
          SizedBox(
            height: Get.height / 100,
          ),
        ],
      ));
}

hideDialog() {
  Get.isDialogOpen! ? Get.back() : null;
}
