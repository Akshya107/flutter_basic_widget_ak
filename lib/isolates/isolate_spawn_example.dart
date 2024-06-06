import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_ak/isolates/my_large_cal_service.dart';

class IsolateSpawnExample extends StatefulWidget {
  const IsolateSpawnExample({super.key});

  @override
  State<IsolateSpawnExample> createState() => _IsolateSpawnExampleState();
}

class _IsolateSpawnExampleState extends State<IsolateSpawnExample> {
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
                  ReceivePort receivePort = ReceivePort();
                  receivePort.listen((msg) {
                    setState(() {
                      result = msg.toString();
                    });
                  });
                  Isolate.spawn(
                      DoSomeCal().someCalBySpawn, receivePort.sendPort);
                },
                child: const Text("Get result using isolate"))
          ],
        ),
      ),
    );
  }
}
