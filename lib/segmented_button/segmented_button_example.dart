import 'package:flutter/material.dart';

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  Set<String> selected = {};

  onSelect(Set<String> val) {
    setState(() {
      selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segmented Example"),
      ),
      body: Center(
        child: SegmentedButton(
          emptySelectionAllowed: true,

          /// can enable multiselect by multiSelectionEnabled set to true
          style: SegmentedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            selectedForegroundColor: Colors.white,
            selectedBackgroundColor: Colors.blue,
          ),
          segments: const [
            ButtonSegment(
                value: 'Primary',
                label: Text('Primary'),
                icon: Icon(Icons.single_bed)),
            ButtonSegment(
                value: 'Secondary',
                label: Text('Secondary'),
                icon: Icon(Icons.single_bed_sharp)),
            ButtonSegment(
                value: 'All',
                label: Text('All'),
                icon: Icon(Icons.all_inclusive)),
          ],
          selected: selected,
          onSelectionChanged: onSelect,
        ),
      ),
    );
  }
}
