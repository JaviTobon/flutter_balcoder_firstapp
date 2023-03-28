import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        height: 400,
        width: 400,
        // child: Center(
        //   child: Text("Javi"),
        // ),
        child: Column(
          children: [
            Spacer(),
            Text("Javi"),
            Text("Morthox"),
            Text(count.toString()),
            Spacer()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("test view");
          onButtonPressed();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  onButtonPressed() {
    setState(() {
      count++;
    });
  }
}
