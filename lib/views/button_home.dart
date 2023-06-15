import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => printIt("Text Clicked"),
          child: getText("TextButton"),
        ),
        getOutlinedButton(),
        CupertinoButton.filled(
            child: getText("TextButton"), onPressed: () => print("IOS")),
      ],
    );
  }

  OutlinedButton getOutlinedButton() {
    return OutlinedButton(
      onPressed: () => print("Outlined"),
      child: getText("TextButton"),
    );
  }

  void printIt(String s) => print(s);

  Text getText(String s) => Text(s);
}
