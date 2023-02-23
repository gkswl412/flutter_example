import 'package:dusty_dust/main.dart';
import 'package:dusty_dust/screen/test2_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ValueListenableBuilder<Box>(
            valueListenable: Hive.box(testBox).listenable(),
            builder: (context, box, widget) {
              return Column(
                children: box.values.map((e) => Text(e.toString())).toList(),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              final box = Hive.box(testBox);
            },
            child: Text('박스 프린트하기!'),
          ),
          ElevatedButton(
            onPressed: () {
              final box = Hive.box(testBox);

              box.put(101, false);
              box.put(0, 'tt');
              box.put(1, '테스트');
            },
            child: Text('데이터 넣기'),
          ),
          ElevatedButton(
            onPressed: () {
              final box = Hive.box(testBox);
            },
            child: Text('특정값 가져오기'),
          ),
          ElevatedButton(
            onPressed: () {
              final box = Hive.box(testBox);
              box.deleteAll(box.keys);
            },
            child: Text('삭제하기'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => TestScreen2(),
                ),
              );
            },
            child: Text('다음화면'),
          ),
        ],
      ),
    );
  }
}
