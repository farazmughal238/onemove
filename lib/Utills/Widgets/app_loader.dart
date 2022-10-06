// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:onemove/Utills/Constants/app_images.dart';

class SpritePainter extends CustomPainter {
  final Animation<double> _animation;

  bool isFood;

  SpritePainter(
    this._animation,
    this.isFood,
  ) : super(repaint: _animation);

  void circle(Canvas canvas, Rect rect, double value) {
    double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    Color color = Color.fromRGBO(0, 64, 64, opacity);

    double size = rect.width / 2;
    double area = size * size;
    double radius = sqrt(area * value / 4);

    final Paint paint = Paint()..color = color;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(SpritePainter oldDelegate) {
    return true;
  }
}

class SpriteDemo extends StatefulWidget {
  bool isFood;
  SpriteDemo({
    Key? key,
    this.isFood = false,
  }) : super(key: key);
  @override
  SpriteDemoState createState() => SpriteDemoState();
}

class SpriteDemoState extends State<SpriteDemo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );
    _startAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller
      ..stop()
      ..reset()
      ..repeat(period: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: SpritePainter(_controller, widget.isFood),
          child: Stack(
            children: [
              const SizedBox(
                width: 150.0,
                height: 150.0,
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: SizedBox(
                    width: 150.0,
                    height: 150.0,
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: Image.asset(Images.logo_image),
                    ),
                  ))
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _startAnimation,
      //   child: new Icon(Icons.play_arrow),
      // ),
    );
  }
}

// Widget showShowLoader() {
//   return Stack(
//     children: [
//       Container(
//         height: Get.height,
//         width: Get.width,
//         color: Colors.transparent,
//       ),
//       Positioned(
//           child: Container(
//               height: Get.height,
//               width: Get.width,
//               color: Colors.transparent,
//               child: Center(child: SpriteDemo())))
//     ],
//   );
// }
