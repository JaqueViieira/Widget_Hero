import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Hero(
          tag: "tag",
          child: Image.asset(
            "assets/good morning.jpeg",
          ),
        ),
      ),
    );
  }
}
