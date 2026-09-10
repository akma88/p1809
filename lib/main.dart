import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
        body: WeatherForecast(),
      ),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _weather();
  }
}

Column _weather() {
  return Column(
    children: [
      // Search
      TextField(
        decoration: InputDecoration(
          labelText: "Enter City Name",
          labelStyle: TextStyle(color: Colors.white, fontSize: 20),
          prefixIcon: Icon(Icons.search, color: Colors.white, size: 30),
          border: InputBorder.none,
        ),
      ),

      SizedBox(height: 20),

      // Location and date
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Zhambulskaya oblast, RK",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Text(
            "Wednesday, Sep 9, 2026",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),

      SizedBox(height: 30),

      // Main weather
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 90),

          SizedBox(width: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "14 F",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                "LIGHT SNOW",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ],
      ),

      SizedBox(height: 30),

      // Extra weather information
      ExtraWeather(),

      SizedBox(height: 30),

      // Forecast title
      Text(
        "7-DAY WEATHER FORECAST",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w300,
        ),
      ),

      SizedBox(height: 10),
      // Forecast list
      Expanded(child: _myListView()),
    ],
  );
}

Row ExtraWeather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 30),
          Text("5", style: TextStyle(color: Colors.white, fontSize: 20)),
          Text("km/hr", style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),

      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 30),
          Text("3", style: TextStyle(color: Colors.white, fontSize: 20)),
          Text("%", style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),

      Column(
        children: [
          Icon(Icons.ac_unit, color: Colors.white, size: 30),
          Text("20", style: TextStyle(color: Colors.white, fontSize: 20)),
          Text("%", style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    ],
  );
}

Widget _myListView() {
  return ListView(
    scrollDirection: Axis.horizontal,
    itemExtent: 200,
    shrinkWrap: true,
    children: [
      ListTile(
        title: Text(
          "Wednesday",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 30),
            Text("6 F", style: TextStyle(color: Colors.white, fontSize: 25)),
            Icon(Icons.ac_unit, color: Colors.white, size: 30),
          ],
        ),
      ),

      ListTile(
        title: Text(
          "Thursday",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 30),
            Text("6 F", style: TextStyle(color: Colors.white, fontSize: 25)),
            Icon(Icons.ac_unit, color: Colors.white, size: 30),
          ],
        ),
      ),

      ListTile(
        title: Text(
          "Friday",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 30),
            Text("6 F", style: TextStyle(color: Colors.white, fontSize: 25)),
            Icon(Icons.ac_unit, color: Colors.white, size: 30),
          ],
        ),
      ),

      ListTile(
        title: Text(
          "Saturday",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 30),
            Text("6 F", style: TextStyle(color: Colors.white, fontSize: 25)),
            Icon(Icons.ac_unit, color: Colors.white, size: 30),
          ],
        ),
      ),

      ListTile(
        title: Text(
          "Sunday",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 30),
            Text("6 F", style: TextStyle(color: Colors.white, fontSize: 25)),
            Icon(Icons.ac_unit, color: Colors.white, size: 30),
          ],
        ),
      ),

      ListTile(
        title: Text(
          "Monday",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 30),
            Text("6 F", style: TextStyle(color: Colors.white, fontSize: 25)),
            Icon(Icons.ac_unit, color: Colors.white, size: 30),
          ],
        ),
      ),

      ListTile(
        title: Text(
          "Tuesday",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 30),
            Text("6 F", style: TextStyle(color: Colors.white, fontSize: 25)),
            Icon(Icons.ac_unit, color: Colors.white, size: 30),
          ],
        ),
      ),
    ],
  );
}
