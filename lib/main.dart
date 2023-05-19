import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:intro_sample/view/home_screen.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
        routes: {
              '/':(context) => IntroScreen()
        },
          )));
}
