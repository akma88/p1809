import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 43, 61),
        appBar: AppBar(
          title: Text(
            "Movies",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 27, 99, 154),
        ),

        body: Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,

              child: Text(
                "The Best:",
                style: TextStyle(
                  color: const Color.fromARGB(255, 216, 10, 10),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Gravity Falls",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Gravity Falls is an American animated mystery comedy television series",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.movie, size: 30, color: Colors.white),
              trailing: Icon(Icons.watch_later, color: Colors.white),
            ),
            Divider(),

            ListTile(
              title: Text(
                "Frozen",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Frozen is a 2013 American animated musical fantasy film",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.movie, size: 30, color: Colors.white),
              trailing: Icon(Icons.watch_later, color: Colors.white),
            ),
            Divider(),

            ListTile(
              title: Text(
                "The Notebook",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "The Notebook is a 2004 American romantic drama film ",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.movie, size: 30, color: Colors.white),
              trailing: Icon(Icons.watch_later, color: Colors.white),
            ),
            Divider(),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Watch:",
                style: TextStyle(
                  color: const Color.fromARGB(255, 216, 10, 10),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(child: _myListView()),
          ],
        ),
      ),
    );
  }
}

Widget _myListView() {
  final List<ListItem> items = List<ListItem>.generate(
    10000,
    (i) => i % 6 == 0
        ? HeadingItem('Heading $i')
        : MessageItem('Sender $i', 'Message body $i'),
  );
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      final item = items[index];

      if (item is HeadingItem) {
        return ListTile(
          title: Text(item.heading, style: TextStyle(color: Colors.white)),
        );
      } else if (item is MessageItem) {
        return ListTile(
          title: Text(item.sender, style: TextStyle(color: Colors.white)),
          subtitle: Text(item.body, style: TextStyle(color: Colors.white)),
          leading: Icon(Icons.insert_photo, color: Colors.red),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
        );
      }
      return Card(
        child: ListTile(
          title: Text('${items[index]}', style: TextStyle(color: Colors.white)),
          leading: Icon(Icons.insert_photo, color: Colors.white),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      );
    },
  );
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}
