import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:worker_list_example/const/data.dart';
import 'package:worker_list_example/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkLoginInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void checkLoginInfo() async {
    final storage = FlutterSecureStorage();
    await storage.write(
      key: USER_TOKEN_KEY,
      value: '9805bcb7-b5e5-448e-bf15-efbedb3f1c10',
    );

    await Future.delayed(
      Duration(
        seconds: 2,
      ),
    );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => HomeScreen(),
      ),
    );
  }
}
