import 'package:flutter/material.dart';
import 'package:flutter_day1/views/animated_container.dart';
import 'package:flutter_day1/views/button_home.dart';
import 'package:flutter_day1/views/container_home.dart';
import 'package:flutter_day1/views/home.dart';
import 'package:flutter_day1/views/image_home.dart';
import 'package:flutter_day1/views/listview_home.dart';
import 'package:flutter_day1/views/movies_home.dart';
import 'package:flutter_day1/views/navigator2_home.dart';
import 'package:flutter_day1/views/navigator_home.dart';
import 'package:flutter_day1/views/rows_columns_home.dart';
import 'package:flutter_day1/views/stack_home.dart';
import 'package:flutter_day1/views/styled_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedView = 0;
  final screens = [const Home(), const MovieHome()];

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
        body: screens[selectedView],
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedView,
          onDestinationSelected: (value) => {
            setState(() => selectedView = value),
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.tv), label: "Netflix")
          ],
        ),
      ),
    );
  }
}
