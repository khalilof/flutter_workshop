import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigator2Home extends StatelessWidget {
  const Navigator2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("screen 2"),
      ),
      body: Column(
        children: [
          const Text("screen 222"),
          CupertinoButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}
