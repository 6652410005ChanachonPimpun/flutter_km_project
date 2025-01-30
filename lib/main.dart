import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home03_ui.dart';
import 'package:flutter_km_project/views/home05_ui.dart';
import 'package:flutter_km_project/views/home06_ui.dart';
import 'package:flutter_km_project/views/introduction_screen_ui.dart';
import 'package:flutter_km_project/views/splash_screen.dart';

void main() {
  runApp(
    //เรียกใช้ widget หลัก
    FlutterKM(),
  );
}

//----------------------------------------
class FlutterKM extends StatefulWidget {
  const FlutterKM({super.key});

  @override
  State<FlutterKM> createState() => _FlutterKMState();
}

class _FlutterKMState extends State<FlutterKM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home06UI(),
    );
  }
}
