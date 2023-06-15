import 'package:flutter/material.dart';

class StyledContainer extends StatelessWidget {
  final Widget child;
  const StyledContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      margin: const EdgeInsets.all(50),
      color: Colors.lightBlue,
      child: child,
    );
  }
}
