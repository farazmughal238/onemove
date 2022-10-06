import 'package:flutter/material.dart';
import '../widgets/customwidgets.dart';

class ItemsShimmerEfect extends StatefulWidget {
  const ItemsShimmerEfect({Key? key}) : super(key: key);

  @override
  State<ItemsShimmerEfect> createState() => _FoodShopState();
}

class _FoodShopState extends State<ItemsShimmerEfect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              for (int i = 0; i < 10; i++) ...{
                shimmerEffect(
                  child: mycardd(),
                ),
              }
            ],
          ),
        ),
      ),
    );
  }
}
