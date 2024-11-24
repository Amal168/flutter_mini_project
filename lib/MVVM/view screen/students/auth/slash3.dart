import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/auth/login2.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/auth/login3.dart';
import 'package:get/get.dart';

class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  void initState() {
    initTo();
    super.initState();
  }

  void initTo() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Get.off(const Login3(),transition: Transition.zoom);
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
