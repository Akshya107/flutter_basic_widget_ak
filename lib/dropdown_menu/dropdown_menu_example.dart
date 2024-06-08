import 'package:flutter/material.dart';

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  onSelect(String? selectedVal) {
    print('This is a selected value from DropDown Item: $selectedVal');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropdownMenuExample"),
      ),
      body: Center(
        child: DropdownMenu(
          dropdownMenuEntries: const <DropdownMenuEntry<String>>[
            DropdownMenuEntry(value: "one", label: "One"),
            DropdownMenuEntry(value: "two", label: "Two"),
            DropdownMenuEntry(value: "three", label: "Three"),
          ],
          onSelected: onSelect,
        ),
      ),
    );
  }
}
