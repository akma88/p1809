import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 175, 189),
        appBar: AppBar(
          title: Text(
            "Ozim jasagan",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),

        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 120, 37, 52),
          ),
          width: 280,
          padding: EdgeInsets.only(left: 10),
          margin: EdgeInsets.only(left: 65, top: 300),
          child: Row(
            children: [
              Text(
                "Stranger Things",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(width: 10),
              Icon(Icons.hub, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
