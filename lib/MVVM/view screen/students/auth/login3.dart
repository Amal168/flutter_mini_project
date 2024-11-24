import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/organizerhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/auth/registration3.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentHome.dart';
import 'package:flutter_mini_project/main.dart';
import 'package:get/get.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String adminname = "student";
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
              // Container(
              //   height: 111,
              //   decoration: const BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage("assest/image_1.png"))),
              // ),
              const Text(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Studenthome()));
                    }
                  },
                  text: "Login",
                  color: primarycolor.c,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Registration3()));
                  },
                  child: const Text(
                    "Create new Account",
                    style: TextStyle(color: buttoncolor.f),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
