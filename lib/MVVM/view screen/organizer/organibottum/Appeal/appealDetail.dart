import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealList.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/updateResult.dart';

class Appealdetail extends StatefulWidget {
  const Appealdetail({super.key});

  @override
  State<Appealdetail> createState() => _AppealdetailState();
}

class _AppealdetailState extends State<Appealdetail> {
  TextEditingController eventName = TextEditingController();
  TextEditingController vedioLink = TextEditingController();
  TextEditingController Discription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appeal Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Event Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "Margamkali",
                    controller: eventName,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Vedio Link",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "www,httrsgssbz",
                    controller: vedioLink,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    lines: 10,
                    hinttext: "",
                    controller: Discription,
                    validate: (p0) {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custembutton(
                    onpress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Updateresult()));
                    },
                    text: "Accept",
                    color: buttoncolor.d),
                custembutton(
                    onpress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Appeallist()));
                    },
                    text: "Reject",
                    color: buttoncolor.e)
              ],
            )
          ],
        ),
      ),
    );
  }
}
