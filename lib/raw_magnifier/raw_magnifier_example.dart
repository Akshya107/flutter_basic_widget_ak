import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RawMagnifierExample extends StatefulWidget {
  const RawMagnifierExample({super.key});

  @override
  State<RawMagnifierExample> createState() => _RawMagnifierExampleState();
}

class _RawMagnifierExampleState extends State<RawMagnifierExample> {
  bool showMagnifier = false;
  Offset? dragGesturePosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            children: [
              GestureDetector(
                  onPanUpdate: (DragUpdateDetails? details) {
                    setState(() {
                      dragGesturePosition = details?.localPosition;
                      showMagnifier = true;
                    });
                    print(dragGesturePosition);
                  },
                  onPanEnd: (DragEndDetails? details) {
                    setState(() {
                      showMagnifier = false;
                    });
                  },
                  child: const Text(para)),
              if (showMagnifier)
                Positioned(
                    left: dragGesturePosition?.dx,
                    top: dragGesturePosition?.dy,
                    child: const RawMagnifier(
                      decoration: MagnifierDecoration(shape: CircleBorder()),
                      focalPointOffset: Offset.zero,
                      size: Size(150, 100),
                      magnificationScale: 2,
                    ))
            ],
          ),
        ),
      ),
    );
  }

  static const String para =
      "Flutter, developed by Google, has emerged as a game-changer in the realm of c"
      "ross-platform mobile development. With its unique features and robust"
      " framework, Flutter has gained significant traction among developers worldwide."
      "1.Introduction to Flutter (approx.100 words)"
      " Flutter is an open-source UI software development kit created by"
      "Google.Launched in 2017, it enables developers to build natively"
      "compiled applications for mobile, web, and desktop from a single codebase."
      "2.Features of Flutter "
      "  Flutter offers a plethora of features that streamline the app "
      "development process. Its hot reload functionality allows developers "
      "to instantly view changes made to the code, facilitating rapid iteration "
      "and experimentation.Additionally, Flutter boasts a rich set of customizable"
      " widgets, enabling developers to create stunning,  expressive user interfaces."
      "3.Advantages of Using Flutter  One of the primary advantages of Flutter "
      "is its ability to  deliver high-performance applications with a native"
      " look and  feel across multiple platforms. Its reactive framework ensures smooth "
      "    and responsive app experiences, while  its extensive widget library simplifies "
      "the UI design process.    Furthermore, Flutter's single codebase reduces development"
      " time and effort, making it an ideal choice for businesses seeking cost-effective solutions.";
}
