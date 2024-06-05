/// Tween: when we talk about Animation so we have one point from where we start our animation and end at some point.
/// so to calculate the each vale in between starting state to end state we use a "Tween"
/// "Tween" helps to define all the values in between an animation's start and end values.
/// EXAMPLE: Create an animation that shows text size increases from 16 to 32.


library;



///EXAMPLE

import 'package:flutter/material.dart';

/*final textSize = Tween<double>(
        begin: 16.0, // start value of font size
        end: 32.0 // end value of font size
        )

/// here tween is set but now we have to animate this so we .animate

    .animate(CurvedAnimation(parent: controller, curve: Curves.linear));*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> textSizeAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Adjust duration as needed
    );
    textSizeAnimation = Tween<double>(
      begin: 16.0, // start value of font size
      end: 32.0, // end value of font size
    ).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: AnimatedBuilder(
          builder: (context, child) {
            return Text(
              "Hello",
              style: TextStyle(fontSize: textSizeAnimation.value),
            );
          },
          animation: controller,
        )),
      ),
    );
  }
}
