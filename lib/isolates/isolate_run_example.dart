import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_ak/isolates/my_large_cal_service.dart';

class IsolateRunExample extends StatefulWidget {
  const IsolateRunExample({super.key});

  @override
  State<IsolateRunExample> createState() => _IsolateRunExampleState();
}

class _IsolateRunExampleState extends State<IsolateRunExample> {
  String result = 'Waiting for result...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result),
            TextButton(
                onPressed: () async {
                  result = await Isolate.run(
                    () => DoSomeCal().someCal(12),
                  );
                  setState(() {});
                },
                child: const Text("Get result using isolate"))
          ],
        ),
      ),
    );
  }
}
