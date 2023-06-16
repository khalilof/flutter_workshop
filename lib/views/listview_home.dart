import 'dart:io';

import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.separated(
        itemCount: 99,
        itemBuilder: (BuildContext context, int index) {
          return getItem(index);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }

  Text getItem(int index) {
    if (Platform.isIOS) {
      return Text("iPhone $index");
    } else if (Platform.isMacOS) {
      return Text("MacOs $index");
    }
    return Text("item $index");
  }
}
