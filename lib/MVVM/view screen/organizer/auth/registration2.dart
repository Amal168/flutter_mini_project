import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/organizerAssign.dart';
import 'package:flutter_mini_project/main.dart';
import 'package:get/get.dart';

class Registration2 extends StatefulWidget {
  const Registration2({super.key});

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController idnocontroller = TextEditingController();
  // String adminname = "admin";
  // String adminpas = "123456";
  // final formkey = GlobalKey<FormState>();

  // @override
  // void dispose() {
  //   usercontroller.dispose();
  //   passwordcontroller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 111,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assest/image_1.png"))),
            ),
            Text(
              "Registration",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: primarycolor.c),
            ),
            const SizedBox(
              height: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your name",
                      controller: namecontroller,
                      validate: (p0) {}),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Phone No",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your Phone No",
                      controller: phonecontroller,
                      validate: (p0) {}),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your Email",
                      controller: emailcontroller,
                      validate: (p0) {}),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Id Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your ID",
                      controller: idnocontroller,
                      validate: (p0) {}),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: mq.width * 0.8,
              child: custembutton(
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Organizerassign()));
                },
                text: "Submit",
                color: primarycolor.c,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
