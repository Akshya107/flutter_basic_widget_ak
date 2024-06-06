import 'package:flutter/material.dart';

class TweenExample extends StatefulWidget {
  const TweenExample({super.key});

  @override
  State<TweenExample> createState() => _TweenExampleState();
}

class _TweenExampleState extends State<TweenExample>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
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
    );
  }
}
