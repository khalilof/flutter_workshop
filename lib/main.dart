import 'package:flutter/material.dart';
import 'package:flutter_day1/views/animated_container.dart';
import 'package:flutter_day1/views/button_home.dart';
import 'package:flutter_day1/views/container_home.dart';
import 'package:flutter_day1/views/home.dart';
import 'package:flutter_day1/views/image_home.dart';
import 'package:flutter_day1/views/listview_home.dart';
import 'package:flutter_day1/views/rows_columns_home.dart';
import 'package:flutter_day1/views/stack_home.dart';
import 'package:flutter_day1/views/styled_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter@Ausy"),
        ),
        body: const StyledContainer(child: AnimatedContainerHome()),
      ),
    );
  }
}
