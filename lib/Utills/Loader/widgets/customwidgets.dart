// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onemove/Utills/Paddings/app_paddings.dart';
import 'package:onemove/Utills/Themes/app_colors.dart';
import 'package:shimmer/shimmer.dart';

Widget shimmerEffect({
  required Widget child,
}) {
  return Shimmer.fromColors(
    baseColor: AppColors.DARK_GREY_COLOR,
    highlightColor: AppColors.WHITE_COLOR,
    // ignore: sort_child_properties_last
    child: Padding(
      padding: AppPaddings.horizontal,
      child: Builder(builder: (context) {
        return child;
      }),
    ),
    period: const Duration(milliseconds: 1300),
  );
}

//----------------------------------------------
class CustomContainer extends StatefulWidget {
  double myHeight;
  double mywidth;
  double radius = 15.0;
  BorderRadius? borderRadius;

  BoxShape? shape;

  CustomContainer(
      this.myHeight, this.mywidth, this.radius, this.borderRadius, this.shape,
      {super.key});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.myHeight,
      width: widget.mywidth,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: widget.borderRadius ??
              BorderRadius.circular(
                  widget.shape == BoxShape.circle ? 0.0 : widget.radius),
          shape: widget.shape ?? BoxShape.rectangle),
    );
  }
}

Widget myContainer() {
  return Builder(builder: (context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black.withOpacity(0.3),
      ),
    );
  });
}
//-----------------------------

Widget myCard() {
  return Builder(builder: (context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => shimmerEffect(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.14,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.36,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.33,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ],
                ))),
      ),
    );
  });
}

Widget customList() {
  return Builder(builder: (context) {
    return GestureDetector(
      onTap: () {
        print("abchxfgdh");
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
        child: shimmerEffect(
            child: SizedBox(
                // width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.36,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2, bottom: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.33,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ],
                ))),
      ),
    );
  });
}

Widget mycardd() {
  return Builder(builder: (context) {
    return Container(
      height: Get.height * 0.12,
      width: Get.width,
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomContainer(
                Get.height * 0.01, Get.width * 0.18, 20, null, null),
            const SizedBox(
              height: 5,
            ),
            CustomContainer(
                Get.height * 0.01, Get.width * 0.18, 20, null, null),
            const SizedBox(
              height: 5,
            ),
            CustomContainer(
                Get.height * 0.01, Get.width * 0.40, 20, null, null),
            const SizedBox(
              height: 5,
            ),
            CustomContainer(
                Get.height * 0.01, Get.width * 0.30, 20, null, null),
            const SizedBox(
              height: 5,
            ),
            CustomContainer(Get.height * 0.01, Get.width * 0.36, 20, null, null)
          ]),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(bottom: 20, right: 10),
            height: Get.height * 0.3,
            width: Get.width * 0.2,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  });
}
