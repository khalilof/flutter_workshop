import 'package:flutter/material.dart';

class StackHome extends StatelessWidget {
  const StackHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [getContainer(Colors.cyan), getIcon(), getTextBox()],
    );
  }

  Container getTextBox() {
    return Container(
      height: 150,
      width: 150,
      margin: const EdgeInsets.only(left: 90, top: 65),
      child: const Text("Hi There"),
    );
  }

  Container getContainer(Color color) {
    return Container(
      height: 150,
      width: 150,
      margin: const EdgeInsets.all(50),
      color: color,
    );
  }

  Container getIcon() {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.all(50),
      child: const Icon(Icons.home),
    );
  }
}
