import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'hero_page.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Get.to(const HeroPage());
        },
        child: Hero(
          tag: "tag",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(85),
            child: Image.asset(
              "assets/good morning.jpeg",
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
