import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        // scrollDirection: Axis.horizontal,// by default it's vertical but can
        // set to horizontal as well
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: const <Widget>[
          Text("item"),
          Text("item ---"),
          Icon(Icons.access_time_filled),
        ],
      ),
    );
  }
}
