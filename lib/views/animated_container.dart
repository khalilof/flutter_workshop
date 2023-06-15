import 'package:flutter/material.dart';

class AnimatedContainerHome extends StatefulWidget {
  const AnimatedContainerHome({super.key});

  @override
  State<AnimatedContainerHome> createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<AnimatedContainerHome> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: 75,
          height: 75,
          color: selected ? Colors.blue : Colors.red,
          duration: const Duration(seconds: 1),
          transform: selected ? Matrix4.rotationZ(1) : Matrix4.rotationZ(0),
        ),
      ),
    );
  }
}
