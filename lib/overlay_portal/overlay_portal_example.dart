import 'package:flutter/material.dart';

class OverlayPortalExample extends StatefulWidget {
  const OverlayPortalExample({super.key});

  @override
  State<OverlayPortalExample> createState() => _OverlayPortalExampleState();
}

class _OverlayPortalExampleState extends State<OverlayPortalExample> {
  final OverlayPortalController _controller = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("OverlayPortal Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (_controller.isShowing) {
              _controller.hide();
            } else {
              _controller.show();
            }
          },
          child: OverlayPortal(
            controller: _controller,
            overlayChildBuilder: (BuildContext context) {
              return Positioned(
                top: height * 0.5,
                left: width * 0.15,
                child: const Text("Hey I am overlayPortal"),
              );
            },
            child: const Text("Press me to show overlay"),
          ),
        ),
      ),
    );
  }
}
