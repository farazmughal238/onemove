import 'package:flutter/material.dart';
import '../widgets/customwidgets.dart';

class FoodShopLoader extends StatefulWidget {
  const FoodShopLoader({Key? key}) : super(key: key);

  @override
  State<FoodShopLoader> createState() => _FoodShopLoaderState();
}

class _FoodShopLoaderState extends State<FoodShopLoader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              for (int i = 0; i < 10; i++) ...{
                shimmerEffect(child: customList()),
              }
            ],
          ),
        ),
      ),
    );
  }
}
