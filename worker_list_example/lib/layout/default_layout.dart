import 'package:flutter/material.dart';
import 'package:worker_list_example/screen/worker_screen.dart';

class DefaultLayout extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  final Widget body;

  const DefaultLayout({
    required this.title,
    this.actions,
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                '메뉴',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              title: Text('작업자 목록'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => WorkerScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('현장 목록'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title),
        actions: actions,
        backgroundColor: Colors.green,
      ),
      body: body,
    );
  }
}
