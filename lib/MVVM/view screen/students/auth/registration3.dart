import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/organizerhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentHome.dart';
import 'package:flutter_mini_project/main.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Registration3 extends StatefulWidget {
  const Registration3({super.key});

  @override
  State<Registration3> createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController idnocontroller = TextEditingController();
  TextEditingController depcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:  false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   height: 111,
            //   decoration: const BoxDecoration(
            //       image:
            //           DecorationImage(image: AssetImage("assest/image_1.png"))),
            // ),
            const Text(
              "Registration",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primarycolor.c),
            ),
            
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your name",
                      controller: namecontroller,
                      validate: (p0) {
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Phone No",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your Phone No",
                      controller: phonecontroller,
                      validate: (p0) {
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your Email",
                      controller: emailcontroller,
                      validate: (p0) {
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Id Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your ID",
                      controller: idnocontroller,
                      validate: (p0) {
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Department",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: mq.width * 0.8,
                  child: custemtextformfield(
                      hinttext: "Enter Your Departmaet",
                      controller: depcontroller,
                      validate: (p0) {
                        return null;
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: mq.width * 0.8,
              child: custembutton(
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Studenthome()));
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
