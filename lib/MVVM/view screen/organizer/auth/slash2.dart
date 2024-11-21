import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/auth/adminlogin.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/auth/login2.dart';
import 'package:get/get.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    initTo();
    super.initState();
  }

  void initTo() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Get.off(const Login2(),transition: Transition.zoom);
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
