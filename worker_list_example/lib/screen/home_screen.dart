import 'package:flutter/material.dart';
import 'package:worker_list_example/layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'home',
      body: ListView(),
    );
  }
}
