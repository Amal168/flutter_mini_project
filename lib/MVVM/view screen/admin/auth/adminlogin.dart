import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminhome.dart';
import 'package:flutter_mini_project/main.dart';
import 'package:get/get.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String adminname = "admin";
  String adminpas = "123456";
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    usercontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: primarycolor.c),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: mq.width * 0.8,
                child: custemtextformfield(
                  hinttext: "Enter Your Username",
                  controller: usercontroller,
                  validate: (p0) {
                     if (usercontroller.text.isEmpty) {
                      return "Enter Your Username";
                    } else if (usercontroller.text != adminname) {
                      return "Invalid Username";
                    }
                    return null;
                  },
                  priffixicon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: mq.width * 0.8,
                child: custemtextformfield(
                  hinttext: "Enter Your Password",
                  controller: passwordcontroller,
                  validate: (p0) {
                    if (passwordcontroller.text.isEmpty) {
                      return "Enter Your password";
                    } else if (passwordcontroller.text != adminpas) {
                      return "Invalid password";
                    }
                    return null;
                  },
                  priffixicon: const Icon(Icons.lock),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: mq.width * 0.8,
                child: custembutton(
                  onpress: () {
                    if (formkey.currentState!.validate()) {
                      Get.to(() => Adminhome());
                    }
                  },
                  text: "Login",
                  color: primarycolor.c,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
