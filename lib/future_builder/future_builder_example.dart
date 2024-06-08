import 'package:flutter/material.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  String futureText = "I am from Future";

  Future<String> getText() async {
    await Future.delayed(const Duration(seconds: 4));
    return futureText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder<String>(
          future: getText(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              String myText = snapshot.data ?? "";
              return Text("Here is my future text: $myText");
            }
            if (snapshot.hasError) {
              return const Text("something went wrong");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
