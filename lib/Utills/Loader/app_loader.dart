// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:onemove/Utills/Themes/app_colors.dart';

class SpinKitView extends StatelessWidget {
  bool themeIsDark = true;
  SpinKitView({
    required this.themeIsDark,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: themeIsDark ? AppColors.PRIMARY_COLOR : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SpinKitFadingFour(
          // SpinKitFoldingCube(
          // SpinKitHourGlass(
          SpinKitFadingCircle(
            size: 35,
            color: themeIsDark ? Colors.white : AppColors.PRIMARY_COLOR,
          ),
        ],
      ),
    );
  }
}

void showLoadingIndicator(
    {required BuildContext context, bool isDark = false}) {
  showDialog(
    barrierDismissible: false,
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 50,
        width: 50,
        color: Colors.transparent,
        child: SpinKitThreeBounce(
          size: 35,
          color: isDark ? Colors.white : AppColors.PRIMARY_COLOR,
        ),
      );
    },
  );
}

void hideOpenDialog({
  required BuildContext context,
}) {
  Navigator.of(context).pop();
}

Widget spinKitButton(BuildContext context, double height, double width) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: AppColors.PRIMARY_COLOR,
    ),
    child: Center(
      child: SpinKitFadingCircle(
        size: 25,
        color: Colors.white,
      ),
    ),
  );
}






// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';

// Widget shimmerEffect({required Widget child, required bool isLoaded}) {
//   return isLoaded
//       ? child
//       : Shimmer.fromColors(
//           baseColor: Colors.grey, highlightColor: Colors.white, child: child);
// }

// class CustomWidget extends StatelessWidget {
//   final double width;
//   final double height;
//   final ShapeBorder shapeBorder;

//   const CustomWidget.rectangular(
//       {super.key, this.width = double.infinity, required this.height})
//       : shapeBorder = const RoundedRectangleBorder();

//   const CustomWidget.circular(
//       {super.key,
//       this.width = double.infinity,
//       required this.height,
//       this.shapeBorder = const CircleBorder()});

//   @override
//   Widget build(BuildContext context) => Shimmer.fromColors(
//         baseColor: Colors.red,
//         highlightColor: Colors.grey[300]!,
//         period: const Duration(seconds: 2),
//         child: Container(
//           width: width,
//           height: height,
//           decoration: ShapeDecoration(
//             color: Colors.grey[400]!,
//             shape: shapeBorder,
//           ),
//         ),
//       );
// }
