import 'package:flutter/material.dart';
import 'package:scrollable_widgets2/layout/main_layout.dart';

import '../const/colors.dart';

class ListViewScreen extends StatelessWidget {
  final List<int> numbers = List.generate(100, (index) => index);

  ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'ListViewScreen',
      body: renderSeperated(),
    );
  }

  // 1
  // ListView default
  Widget renderDefault() {
    return ListView(
      children: numbers
          .map((e) =>
              renderContainer(color: colors[e % colors.length], index: e))
          .toList(),
    );
  }

  // 2
  // ListView.builder : 보이는 부분만 그린다. 퍼포먼스 매우 좋음
  Widget renderBuilder() {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return renderContainer(
            color: colors[index % colors.length], index: index);
      },
    );
  }

  // 3
  // 2 + 중간 중간에 추가할 위젯 넣을 수 있음
  Widget renderSeperated() {
    return  ListView.separated(
        itemCount: 100,
        itemBuilder: (context, index) {
          return renderContainer(
            color: colors[index % colors.length],
            index: index,
          );
        },
        separatorBuilder: (context, index) {
          index += 1;
          // 5개의 아이템마다 배너 보여주기
          if(index % 5 == 0) {
            return renderContainer(
              color: Colors.black,
              index: index,
              height: 100,
            );
          }
          return SizedBox(height: 32,);
        }
    );
  }

  Widget renderContainer({
    required Color color,
    required int index,
    double? height,
  }) {
    print(index);
    return Container(
      height: height ?? 300,
      color: color,
      child: Center(
        child: Text(
          index.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
