import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final String? title;
  final Widget? bottomNavigationBar;

  const DefaultLayout({
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: renderAppBar(),
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar? renderAppBar() {
    if(title == null) {
      return null;
    }else {
       return AppBar(
         centerTitle: true,
         backgroundColor: Colors.white,
         foregroundColor: Colors.black,
         elevation: 0,
         title: Text(
           title!,
           style: TextStyle(
             fontSize: 16.0,
             fontWeight: FontWeight.w500,
           ),
         ),
       );
    }
  }
}
