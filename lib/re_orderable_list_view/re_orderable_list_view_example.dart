import 'package:flutter/material.dart';

class ReOrderableListViewExample extends StatefulWidget {
  const ReOrderableListViewExample({super.key});

  @override
  State<ReOrderableListViewExample> createState() =>
      _ReOrderableListViewExampleState();
}

class _ReOrderableListViewExampleState
    extends State<ReOrderableListViewExample> {
  List<String> itemsList = [
    "hello",
    "hello1",
    "hello2",
    "hello3",
    "hello4",
    "hello5",
    "hello6"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ReOrderableListViewExample"),
      ),
      body: ReorderableListView(
          physics: const ClampingScrollPhysics(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              updateListItems(oldIndex, newIndex);
            });
          },
          children: [
            for (final item in itemsList)
              ListTile(
                title: Text(item),
                key: ValueKey(item),
              )
          ]),
    );
  }

  void updateListItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    final item = itemsList.removeAt(oldIndex);

    itemsList.insert(newIndex, item);
  }
}
