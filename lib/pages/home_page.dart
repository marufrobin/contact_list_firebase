import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.camera_alt_rounded)))
          ],
        ),
      ),
    );
  }
}
