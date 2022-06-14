import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      ),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: GestureDetector(
        onTap: (){
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
