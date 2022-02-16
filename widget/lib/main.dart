import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List.generate(100, (index) => index).toList();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('제목'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('Event'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          ],
        ),
      ),
    );
  }
}
