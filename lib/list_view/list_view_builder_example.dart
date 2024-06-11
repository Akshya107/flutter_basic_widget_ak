import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatefulWidget {
  const ListViewBuilderExample({super.key});

  @override
  State<ListViewBuilderExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const Text("item");
        },
      ),
    );
  }
}
