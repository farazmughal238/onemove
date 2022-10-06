// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:onemove/Utills/Paddings/app_paddings.dart';

class Skelton extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;

  final BoxShape boxShape;

  const Skelton({
    Key? key,
    this.containerHeight = 120,
    this.containerWidth = 120,
    this.boxShape = BoxShape.rectangle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        shape: boxShape,
        //borderRadius: containerRadius,
        color: Colors.black.withOpacity(0.3),
      ),
    );
  }
}

class NewSkeletonOne extends StatelessWidget {
  // final int linecount;
  final double boxheight;
  final double boxwidth;
  final BoxShape shimmershape;

  const NewSkeletonOne({
    Key? key,
    // this.linecount = 3,

    this.boxheight = 120,
    this.boxwidth = 120,
    this.shimmershape = BoxShape.rectangle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Skelton(
      containerHeight: boxheight,
      containerWidth: boxwidth,
      boxShape: shimmershape,
    );
  }
}

class NewSkeletonTwo extends StatelessWidget {
  final BorderRadius radiusValue;
  final int linecount;
  final double boxHeight;
  final double boxWidth;

  const NewSkeletonTwo({
    Key? key,
    this.radiusValue = BorderRadius.zero,
    this.linecount = 3,
    this.boxHeight = 20,
    this.boxWidth = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppPaddings.horizontal,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Skelton(
                  containerWidth: boxWidth,
                  containerHeight: boxHeight,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
                itemCount: linecount,
              ),
            ]),
      ),
    );
  }
}
