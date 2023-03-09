import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worker_list_example/screen/home_screen.dart';
import 'package:worker_list_example/screen/splash_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: SplashScreen(),
      ),
    ),
  );
}
