import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealDetail.dart';

class Appeallist extends StatefulWidget {
  const Appeallist({super.key});

  @override
  State<Appeallist> createState() => _AppeallistState();
}

class _AppeallistState extends State<Appeallist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Appeal List",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Appealdetail()));
                  },
                  child: Card(
                    child: ListTile(
                      leading: Image.asset("assest/photo 3.png"),
                      title: Text("Name",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        "ID Number",
                      ),
                      trailing: Text(
                        "Accepted",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
