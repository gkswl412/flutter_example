import 'package:flutter/material.dart';
import 'package:responsive/screen/home_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(
    MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: MediaQuery.of(context).size.width,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(MediaQuery.of(context).size.width, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      initialRoute: "/",
      home: HomeScreen(),
    ),
  );
}
