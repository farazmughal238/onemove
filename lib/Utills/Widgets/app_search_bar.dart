import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onemove/Utills/Fonts/app_dimensions.dart';
import 'package:onemove/Utills/Themes/app_colors.dart';
import 'package:onemove/Utills/Widgets/app_text_field.dart';

Widget appSearchBar(
    {required BuildContext context,
    required String hintText,
    bool isSufix = true,
    bool isPrefix = true,
    bool isRead = false,
    bool isShowCursor = true,
    String fontFamily = "Light Grold",
    double borderRadius = 50,
    Color backColor = const Color(0xFF00CCBC),
    String iconImage = 'assets/icons/search.png',
    VoidCallback? onTap}) {
  final controller = TextEditingController();

  return AppTextField(
    isPrefix: isPrefix,
    isShowCursor: isShowCursor,
    fontFamily: fontFamily,
    onTap: onTap ?? () {},
    isReadOnly: isRead,
    cursorColor: backColor,
    controller: controller,
    prefixIcon: Padding(
        padding: const EdgeInsets.all(AppDimensions.FONT_SIZE_12),
        child: Image.asset(
          iconImage,
          color: AppColors.DARK_GREY_COLOR,
        )),
    onSuffixTap: () {
      controller.clear();
    },
    suffixIcon: Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height / 65),
      child: CircleAvatar(
        backgroundColor: isSufix
            ? AppColors.RED_COLOR.withOpacity(0.75)
            : AppColors.TRANSPARENT_COLOR,
        radius: 8,
        child: Icon(
          Icons.close,
          color: isSufix ? AppColors.WHITE_COLOR : AppColors.TRANSPARENT_COLOR,
          size: AppDimensions.FONT_SIZE_10,
        ),
      ),
    ),
    hint: hintText,
    hintSize: AppDimensions.FONT_SIZE_12,
    // borderColor: backColor == AppColors.WHITE_COLOR
    //     ? AppColors.WHITE_COLOR
    //     : backColor.withOpacity(0.5),
    borderColor: AppColors.TRANSPARENT_COLOR,
    isFill: true,
    fillColor: backColor == AppColors.WHITE_COLOR
        ? AppColors.WHITE_COLOR
        : backColor.withOpacity(0.1),
    borderRadius: BorderRadius.circular(borderRadius),
    isborderline: true,
  );
}
