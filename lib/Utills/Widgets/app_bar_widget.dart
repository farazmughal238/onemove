// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onemove/Utills/Fonts/app_dimensions.dart';
import 'package:onemove/Utills/Paddings/app_paddings.dart';
import 'package:onemove/Utills/Themes/app_colors.dart';
import 'package:onemove/Utills/Widgets/app_sized_box.dart';

import 'app_text.dart';

class PrimaryAppBar extends StatelessWidget {
  final bool isSubTitle;
  final bool isPrefix;
  final String titleFontFamily;
  final String subTitleFontFamily;
  final bool isDrop;
  final bool isOnSubTitle;
  final bool isSuffix;
  final String subTitle;
  final VoidCallback? dropOnTap;
  final Color prefixIconColor;
  final Color suffixIconColor;
  final Color prefixButtonColor;
  final Color suffixButtonColor;
  final Color dropDownIconColor;
  final String suffixIconImage;
  final String prefixIconImage;
  final String titleText;
  final bool isCenter;
  final bool isAppBar;
  final double titleSize;
  final double suffixPadding;
  final double prefixPadding;
  double subtitleSize;
  final Color titleColor;
  final Color subtitleColor;
  List<Widget> actions;
  final bool isActions;
  final FontWeight titleFontWeight;
  final FontWeight subtitleFontWeight;
  final VoidCallback? prefixOnTap;
  final VoidCallback? suffixOnTap;
  final bool isDivider;
  PrimaryAppBar(
      {Key? key,
      this.suffixIconImage = "assets/icons/info.png",
      this.prefixIconImage = "assets/icons/back.png",
      required this.titleText,
      this.prefixOnTap,
      this.suffixOnTap,
      this.prefixIconColor = Colors.black,
      this.suffixIconColor = Colors.black,
      this.isSubTitle = false,
      this.isDrop = false,
      this.subTitle = "",
      this.actions = const [],
      this.isActions = false,
      this.dropOnTap,
      this.isSuffix = true,
      this.isAppBar = true,
      this.isPrefix = true,
      this.titleSize = 18,
      this.subtitleSize = 16,
      this.titleColor = Colors.black,
      this.subtitleColor = Colors.grey,
      this.titleFontWeight = FontWeight.w400,
      this.subtitleFontWeight = FontWeight.w400,
      this.prefixButtonColor = const Color(0xffE5E5E5),
      this.suffixButtonColor = const Color(0xffE5E5E5),
      this.dropDownIconColor = const Color(0xffE5E5E5),
      this.isDivider = true,
      this.isCenter = false,
      this.titleFontFamily = "Grold",
      this.subTitleFontFamily = "Grold",
      this.isOnSubTitle = false,
      this.suffixPadding = 5,
      this.prefixPadding = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isAppBar ? Get.height / 8.5 : Get.height / 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: AppPaddings.defaultPadding,
            child: Row(
              children: [
                isPrefix
                    ? Row(
                        children: [
                          AppCircleImageButton(
                            height: 30,
                            width: 30,
                            imageUrl: prefixIconImage,
                            onTap: prefixOnTap ??
                                () {
                                  Get.back();
                                },
                            iconColor: prefixIconColor,
                            padding: prefixPadding,
                            buttonColor: prefixButtonColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    : Container(),
                isCenter ? Spacer() : Container(),
                isSubTitle
                    ? GestureDetector(
                        onTap: dropOnTap ?? () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: dropOnTap ?? () {},
                              child: Row(
                                children: [
                                  isDrop
                                      ? Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_rounded,
                                              size: AppDimensions.FONT_SIZE_15,
                                              color: Color(0xFFFF9617),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        )
                                      : Container(),
                                  AppText(
                                      fontFamily: titleFontFamily,
                                      text: titleText,
                                      size: titleSize,
                                      color: titleColor,
                                      fontWeight: titleFontWeight),
                                  isOnSubTitle
                                      ? Container()
                                      : isDrop
                                          ? Row(
                                              children: [
                                                horizantalSizedBox(width: 100),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: AppDimensions
                                                      .FONT_SIZE_15,
                                                ),
                                              ],
                                            )
                                          : Container()
                                ],
                              ),
                            ),
                            verticalSizedBox(height: 200),
                            Row(
                              children: [
                                SizedBox(
                                  width: isCenter ? 80 : 200,
                                  child: AppText(
                                      maxline: 1,
                                      fontFamily: subTitleFontFamily,
                                      text: subTitle,
                                      size: subtitleSize,
                                      color: subtitleColor,
                                      fontWeight: subtitleFontWeight),
                                ),
                                isOnSubTitle
                                    ? isDrop
                                        ? Row(
                                            children: [
                                              horizantalSizedBox(width: 100),
                                              Icon(
                                                Icons.keyboard_arrow_down,
                                                size:
                                                    AppDimensions.FONT_SIZE_15,
                                              ),
                                            ],
                                          )
                                        : Container()
                                    : Container()
                              ],
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: AppText(
                            fontFamily: titleFontFamily,
                            text: titleText,
                            size: titleSize,
                            color: titleColor,
                            fontWeight: titleFontWeight),
                      ),
                const Spacer(),
                isCenter
                    ? AppCircleImageButton(
                        height: 30,
                        width: 30,
                        imageUrl: prefixIconImage,
                        onTap: () {},
                        iconColor: AppColors.TRANSPARENT_COLOR,
                        padding: 0,
                        buttonColor: AppColors.TRANSPARENT_COLOR)
                    : Container(),
                isSuffix
                    ? AppCircleImageButton(
                        height: 30,
                        width: 30,
                        imageUrl: suffixIconImage,
                        onTap: suffixOnTap ?? () {},
                        iconColor: suffixIconColor,
                        padding: suffixPadding,
                        buttonColor: suffixButtonColor)
                    : isActions
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: actions,
                          )
                        : Container(),
              ],
            ),
          ),
          isDivider
              ? const Divider(
                  height: 0,
                )
              : Container()
        ],
      ),
    );
  }
}

class AppCircleImageButton extends StatelessWidget {
  final Color iconColor;
  final Color buttonColor;
  final double height;
  final double width;
  final double padding;
  final String imageUrl;
  final VoidCallback onTap;
  final Color borderColor;
  const AppCircleImageButton(
      {Key? key,
      this.buttonColor = const Color(0xffE5E5E5),
      this.height = 36,
      this.width = 36,
      required this.imageUrl,
      required this.onTap,
      this.borderColor = Colors.transparent,
      required this.iconColor,
      this.padding = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: buttonColor,
            shape: BoxShape.circle,
            border: Border.all(color: borderColor)),
        child: Padding(
            padding: EdgeInsets.all(padding),
            child: Image(
              image: AssetImage(imageUrl),
              color: iconColor,
            )),
      ),
    );
  }
}
