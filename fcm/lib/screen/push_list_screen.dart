import 'package:fcm/layout/main_layout.dart';
import 'package:flutter/material.dart';

class PushListScreen extends StatelessWidget {
  const PushListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: '알림 목록',
        body: Center(
          child: Text('알림 목록 페이지'),
        ),
    );
  }
}
