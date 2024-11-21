import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class custemtextformfield extends StatelessWidget {
  String hinttext;
  TextEditingController controller;
  final String? Function(String?)? validate;
  double? high;
  double? verticalPadding;
  Widget? priffixicon;

  custemtextformfield({
    super.key,
    this.high,
    this.verticalPadding,
    required this.hinttext,
    required this.controller,
    required this.validate,
    this.priffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: high,
      child: TextFormField(
        validator: validate,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: verticalPadding ?? 20.0, horizontal: 20.0),
            prefixIcon: priffixicon,
            hintText: hinttext,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}

class custembutton extends StatelessWidget {
  String text;
  Function() onpress;
  Color color;
  custembutton(
      {super.key,
      required this.onpress,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(color)),
          onPressed: onpress,
          child: Text(
            text.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
          )),
    );
  }
}

class costemMaterialbutton extends StatelessWidget {
  Color colors;
  Function() onpress;
  Text text;
  costemMaterialbutton(
      {super.key,
      required this.colors,
      required this.onpress,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: colors,
        onPressed: onpress,
        child: Text(
          text.toString(),
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ));
  }
}

class custemtoggle extends StatefulWidget {
  const custemtoggle({super.key});

  @override
  State<custemtoggle> createState() => _custemtoggleState();
}

class _custemtoggleState extends State<custemtoggle> {
  bool toggle = true;

  void togle() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
        onPressed: () {
          togle();
        },
        icon: toggle
            ? Icon(Icons.check_box_outlined,)
            : Icon(Icons.check_box_outline_blank_outlined));
  }
}


