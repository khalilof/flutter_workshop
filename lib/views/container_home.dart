import 'package:flutter/material.dart';

class ContainerHome extends StatelessWidget {
  const ContainerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.all(50),
      transform: Matrix4.rotationZ(0.5),
      color: Colors.greenAccent.shade400,
    );
  }
}
