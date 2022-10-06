import 'package:flutter/material.dart';

import '../view/new_skeleton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => const NewSkeleton(),
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
