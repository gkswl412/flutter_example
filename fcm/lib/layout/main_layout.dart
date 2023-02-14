import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {

  String title;
  Widget body;

  MainLayout({
    required this.title,
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }


}
