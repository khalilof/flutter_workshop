import 'package:flutter/material.dart';
import 'package:flutter_day1/views/navigator2_home.dart';

class NavigatorHome extends StatelessWidget {
  const NavigatorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("home Screen"),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Navigator2Home()));
            },
            child: const Icon(Icons.settings))
      ],
    );
  }
}
