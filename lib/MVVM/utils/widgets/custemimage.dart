import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustemImagePicker extends StatefulWidget {
  const CustemImagePicker({super.key});

  @override
  State<CustemImagePicker> createState() => _CustemImagePickerState();
}

class _CustemImagePickerState extends State<CustemImagePicker> {
  File? image;

  Future<void> imagePicker() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Choose an option"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                pickImage(ImageSource.gallery);
              },
              child: const Text("Gallery"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                pickImage(ImageSource.camera);
              },
              child: const Text("Camera"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  image = null;
                });
              },
              child: const Text(
                "Delete Photo",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path); 
        print("No image selected");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: imagePicker,
            child: SizedBox(
              width: 350,
              height: 197,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: image == null
                    ? SizedBox(
                      width: 75,
                      height: 75,
                      child: const Image(
                          image: AssetImage(
                            "assest/photo 3.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                    )
                    : Image.file(
                        image!,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
          // const SizedBox(height: 20),
          // if (image != null)
          //   const Text(
          //     'Image Selected!',
          //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //   ),
        ],
      
    );
  }
}
