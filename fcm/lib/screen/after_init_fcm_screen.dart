import 'package:fcm/layout/main_layout.dart';
import 'package:flutter/material.dart';

class AfterInitFcmScreen extends StatelessWidget {
  const AfterInitFcmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'AfterInitFcmScreen',
      body: const Center(
        child: Text('FCM 초기화 완료'),
      ),
    );
  }
}
