import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: "Welcome to ", children: <TextSpan>[
      TextSpan(text: " Ausy ", style: TextStyle(backgroundColor: Colors.blue)),
      TextSpan(text: " TEchnologies ")
    ]));
  }
}
