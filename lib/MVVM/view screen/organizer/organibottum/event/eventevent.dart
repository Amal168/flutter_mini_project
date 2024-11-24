import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/participationList.dart';

class Eventevent extends StatefulWidget {
  const Eventevent({super.key});

  @override
  State<Eventevent> createState() => _EventeventState();
}

class _EventeventState extends State<Eventevent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Participationlist()));
              },
              child: Container(
                height: 50,
                width: 350,

                decoration: BoxDecoration(
                    color: buttoncolor.g,
                    borderRadius: BorderRadius.circular(15)),
                    child: const Center(child: Text("Kuchupudi"),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
