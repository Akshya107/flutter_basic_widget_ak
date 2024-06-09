import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTileExample"),
      ),
      body: const Center(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          leading: Icon(Icons.access_time_filled),
          title: Text("Hey list tile"),
        ),
      ),
    );
  }
}
