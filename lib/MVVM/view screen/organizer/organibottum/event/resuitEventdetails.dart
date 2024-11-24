import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custemimage.dart';

class Resuiteventdetails extends StatefulWidget {
  String name;
   Resuiteventdetails({super.key,required this.name});

  @override
  State<Resuiteventdetails> createState() => _ResuiteventdetailsState();
}

class _ResuiteventdetailsState extends State<Resuiteventdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Event Detail ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(height: 20,),
            Column(children: [
              Text("Date       18/07/23"),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stage No   02"),
                ],
              ),
              Text("Time        1:30 pm"),
              Text("Location   Ground"),
            ],),
            SizedBox(height: 20,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Result",style: TextStyle(fontWeight: FontWeight.bold),),
                 SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30)),
                        child: CustemImagePicker(),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
