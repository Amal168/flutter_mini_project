import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/eventevent.dart';

class Eventorgbottum extends StatefulWidget {
  const Eventorgbottum({super.key});

  @override
  State<Eventorgbottum> createState() => _EventorgbottumState();
}

class _EventorgbottumState extends State<Eventorgbottum> with TickerProviderStateMixin {
  late TabController tabcontrol;

  @override
  void initState() {
    super.initState();
    tabcontrol = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabcontrol.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color:buttoncolor.i ,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(30),
                  //   color: Colors.orange,  
                  // ),
                  controller: tabcontrol,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 50),
                  tabs: [
                    Tab(child: Text("Event",style: TextStyle(color: Colors.white),)), 
                  Tab(child: Text("Result",style: TextStyle(color: Colors.white)))],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabcontrol,
              children: [
                Eventevent(),
                Center(child: Text("data")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
