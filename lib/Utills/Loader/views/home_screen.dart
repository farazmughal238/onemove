import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onemove/Utills/Loader/widgets/customwidgets.dart';

class HomeScreenloader extends StatelessWidget {
  const HomeScreenloader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              shimmerEffect(
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              shimmerEffect(
                  child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: MediaQuery.of(context).size.height * 0.02,
                color: Colors.black.withOpacity(0.3),
              )),
              Container(
                height: Get.height * 0.15,
                margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) =>
                      shimmerEffect(
                          child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              shape: BoxShape.circle),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                          color: Colors.black.withOpacity(0.3),
                        )
                      ],
                    ),
                  )),
                ),
              ),
              shimmerEffect(
                child: Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: CarouselSlider(
                    items: [myContainer()],
                    options: CarouselOptions(
                      height: 160.0,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 1300),
                      viewportFraction: 0.99,
                      // onPageChanged: (index, reason) {
                      //   setState(() {
                      //     currentPos = index;
                      //   });
                      // }
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) =>
                      shimmerEffect(
                          child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.14,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
                ),
              ),
              shimmerEffect(
                  child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: MediaQuery.of(context).size.height * 0.022,
                color: Colors.black.withOpacity(0.3),
              )),
              myCard(),
              for (int i = 0; i < 10; i++) ...{customList()}
            ],
          ),
        ),
      ),
    );
  }
}
