import 'package:flutter/material.dart';

class ListViewSeparatedExample extends StatefulWidget {
  const ListViewSeparatedExample({super.key});

  @override
  State<ListViewSeparatedExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewSeparatedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (BuildContext context, int index) {
          return const Text("ITEM");
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(); // will provide a horizontal flat line to divide
          // every item in list
        },
        itemCount: 5,
      ),
    );
  }
}
