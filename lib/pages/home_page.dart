import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? xFile;
  File? file;
  addImage() async {
    xFile = await _imagePicker.pickImage(source: ImageSource.camera);
    file = File(xFile!.path);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contact List"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Placeholder(),
            ),
            Expanded(
                child: file == null
                    ? IconButton(
                        onPressed: () async {
                          addImage();
                        },
                        icon: Icon(Icons.camera_alt_rounded))
                    : Image.file(file!))
          ],
        ),
      ),
    );
  }
}
