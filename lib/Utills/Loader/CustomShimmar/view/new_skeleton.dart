import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onemove/Utills/Loader/CustomShimmar/custom_shimmer.dart';
import 'package:onemove/Utills/Paddings/app_paddings.dart';

class NewSkeleton extends StatelessWidget {
  const NewSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          Padding(
            padding: AppPaddings.horizontal,
            child: Row(
              children: [
                Skelton(
                  containerHeight: Get.height / 6.7,
                  containerWidth: Get.width / 3.1,
                  //  containerRadius: AppBorderRadius.BORDER_RADIUS_20,
                  //boxShape:BoxS ,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Skelton(
                          containerHeight: 20,
                          containerWidth: Get.width,
                          // containerRadius: AppBorderRadius.BORDER_RADIUS_05,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Skelton(
                          containerHeight: 20,
                          containerWidth: Get.width,
                          //  containerRadius: AppBorderRadius.BORDER_RADIUS_05,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Skelton(
                                containerHeight: 20,
                                containerWidth: Get.width,
                                // containerRadius:
                                //     AppBorderRadius.BORDER_RADIUS_05,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Skelton(
                                containerHeight: 20,
                                containerWidth: Get.width,
                                // containerRadius:
                                //     AppBorderRadius.BORDER_RADIUS_05,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
