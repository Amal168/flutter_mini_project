import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Participationlist extends StatefulWidget {
  const Participationlist({super.key});

  @override
  State<Participationlist> createState() => _ParticipationlistState();
}

class _ParticipationlistState extends State<Participationlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("participants List",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/OIP.eXWcaYbEtO2uuexHM8sAwwHaHa?w=199&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7"),),
              title: Text("Nmae"),
              subtitle: Text("ID Number"),
            
            );
          },
        ),
      ),
    );
  }
}
