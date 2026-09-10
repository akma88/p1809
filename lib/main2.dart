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

        body: Row(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset("assets/images/image1.png"),
                ),

                Expanded(
                  flex: 2,
                  child: Image.asset("assets/images/image3.png"),
                ),

                Expanded(
                  flex: 2,
                  child: Image.asset("assets/images/image4.png"),
                ),

                Stack(
                  children: [
                    Image.asset("assets/images/image2.png", height: 320),
                    Positioned(child: Icon(Icons.wb_cloudy)),
                  ],
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 100,
              children: List.generate(5, (int index) {
                return Chip(
                  label: Text(
                    drinks[index],
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  avatar: Icon(Icons.coffee),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

final drinks = ["americano", "cappucino", "latte", "raf", "frappe"];
