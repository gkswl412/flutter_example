import 'package:flutter/material.dart';

import '../const/colors.dart';

class CustomScrollViewScreen extends StatelessWidget {
  final List<int> numbers = List.generate(100, (index) => index);
  CustomScrollViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          renderSliverAppbar(),
          renderChildSliverList(),
          renderBuilderSliverList(),
          renderChildSliverGrid(),
          renderBuilderSliverGrid(),
        ],
      ),
    );
  }

  SliverAppBar renderSliverAppbar() {
    return SliverAppBar(
      // 스크롤 했을때 리스트의 중간에도 Appbar가 내려오게 할 수 있음
      floating: true,
      // 완전 고정
      pinned: false,
      // 자석과 같은 효과, 끝과 끝만 존재 무조건 붙음, floating true일때만 활성화 가능
      snap: true,
      // 맨 위에서 한계 이상으로 스크롤 했을때 남는 공간을 차지
      stretch: true,
      expandedHeight: 200,
      collapsedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'asset/img/image_1.jpeg',
          fit: BoxFit.cover,
        ),
        title: Text('FlexibleSpace'),
      ),
      title: Text('CustomScrollViewScreen'),
    );
  }

  // ListView 기본 생성자와 유사함
  SliverList renderChildSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        numbers
            .map(
              (e) =>
                  renderContainer(color: colors[e % colors.length], index: e),
            )
            .toList(),
      ),
    );
  }

  // ListView.Builder 생성자와 유사함
  SliverList renderBuilderSliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return renderContainer(
            color: colors[index % colors.length],
            index: index,
          );
        },
        childCount: 100,
      ),
    );
  }

  // GridView.count 유사함
  SliverGrid renderChildSliverGrid() {
    return SliverGrid(
      delegate: SliverChildListDelegate(
        numbers
            .map(
              (e) =>
                  renderContainer(color: colors[e % colors.length], index: e),
            )
            .toList(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }

  // GridView.builder 유사함
  SliverGrid renderBuilderSliverGrid() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return renderContainer(
            color: colors[index % colors.length],
            index: index,
          );
        },
        childCount: 100,
      ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
      ),
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
