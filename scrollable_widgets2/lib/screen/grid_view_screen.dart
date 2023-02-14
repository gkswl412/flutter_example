import 'package:flutter/material.dart';
import 'package:scrollable_widgets2/layout/main_layout.dart';

import '../const/colors.dart';

class GridViewScreen extends StatelessWidget {
  List<int> numbers = List.generate(100, (index) => index);
  GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'GridViewScreen',
      body: renderMaxExtent(),
    );
  }
  
  // 1
  // 한번에 다 그림!
  Widget renderCount() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      children: numbers.map(
              (e) => renderContainer(color: colors[e % colors.length], index: e,)
      ).toList(),
    );
  }

  // 2
  // 보이는 것만 그림!
  Widget renderBuilder() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index){
        return renderContainer(color: colors[index % colors.length], index: index,);
      },
      itemCount: 20,
    );
  }

  // 3
  // 최대 길이 지정
  Widget renderMaxExtent() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (context, index){
        return renderContainer(color: colors[index % colors.length], index: index,);
      },
      itemCount: 40,
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
