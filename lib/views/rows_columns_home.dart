import 'package:flutter/material.dart';

class RowsColumnsHome extends StatelessWidget {
  const RowsColumnsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [getContainer(Colors.black), getContainer(Colors.red)],
          ),
        ),
        Container(
          color: Colors.yellow.shade50,
          child: Row(
            children: [
              Expanded(child: getContainer(Colors.black)),
              getContainer(Colors.red)
            ],
          ),
        ),
        Row(
          children: [getContainer(Colors.black), getContainer(Colors.red)],
        ),
      ],
    );
  }

  Container getContainer(Color color) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.all(50),
      color: color,
    );
  }
}
