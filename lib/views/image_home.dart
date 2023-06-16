import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageHome extends StatelessWidget {
  const ImageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
        child: SvgPicture.asset(
          "assets/icons/ausy.svg",
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }

  //assets/icons/ausy.svg
}
