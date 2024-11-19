import 'package:flutter/material.dart';

class custemtextformfield extends StatelessWidget {
  String hinttext;
  TextEditingController controller;
  final String? Function(String?)? validate;

  Widget? priffixicon;

  custemtextformfield({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.validate,
    this.priffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: priffixicon,
          hintText: hinttext,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
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
          )
    );
  }
}
