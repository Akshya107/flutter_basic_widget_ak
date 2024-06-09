import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_ak/dropdown_menu/dropdown_menu_example.dart';
import 'package:flutter_basic_widget_ak/future_builder/future_builder_example.dart';
import 'package:flutter_basic_widget_ak/isolates/isolate_run_example.dart';
import 'package:flutter_basic_widget_ak/isolates/isolate_spawn_example.dart';
import 'package:flutter_basic_widget_ak/list_tile/list_tile_example.dart';
import 'package:flutter_basic_widget_ak/my_app.dart';
import 'package:flutter_basic_widget_ak/overlay_portal/overlay_portal_example.dart';
import 'package:flutter_basic_widget_ak/raw_magnifier/raw_magnifier_example.dart';
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
    case 'OverlayPortal':
      runApp(const MyApp(home: OverlayPortalExample()));
      break;
    case 'RawMagnifier':
      runApp(const MyApp(home: RawMagnifierExample()));
      break;
    case 'FutureBuilder':
      runApp(const MyApp(home: FutureBuilderExample()));
      break;
    case 'ListTile':
      runApp(const MyApp(home: ListTileExample()));
      break;
    default:
      runApp(const MyApp(home: TweenExample()));
  }
}
