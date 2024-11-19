import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/auth/adminlogin.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    initTo();
    super.initState();
  }

  void initTo() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Get.off(const Adminlogin(),transition: Transition.zoom);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assest/image_1.png")],
        ),
      ),
    );
  }
}
