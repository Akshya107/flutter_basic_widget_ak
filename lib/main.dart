import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_ak/dropdown_menu/dropdown_menu_example.dart';
import 'package:flutter_basic_widget_ak/isolates/isolate_run_example.dart';
import 'package:flutter_basic_widget_ak/isolates/isolate_spawn_example.dart';
import 'package:flutter_basic_widget_ak/segmented_button/segmented_button_example.dart';
import 'package:flutter_basic_widget_ak/tween/tween_example.dart';

void main() {
  const cmd = String.fromEnvironment('EXAMPLE');
  switch (cmd) {
    case 'Tween':
      runApp(const MyApp(home: TweenExample()));
      break;
    case 'IsolateRun':
      runApp(const MyApp(home: IsolateRunExample()));
      break;
    case 'IsolateSpawn':
      runApp(const MyApp(home: IsolateSpawnExample()));
      break;
    case 'SegmentedButton':
      runApp(const MyApp(home: SegmentedButtonExample()));
      break;
    case 'DropdownMenu':
      runApp(const MyApp(home: DropdownMenuExample()));
      break;
    default:
      print('Invalid example name provided. Running Tween by default.');
      runApp(const MyApp(home: TweenExample()));
  }
}

class MyApp extends StatelessWidget {
  final Widget home;

  const MyApp({super.key, required this.home});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home,
    );
  }
}
