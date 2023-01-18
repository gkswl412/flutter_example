import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.red,
                      height: 50.0,
                      width: 50.0,
                    ),
                    Container(
                      color: Colors.orange,
                      height: 50.0,
                      width: 50.0,
                    ),
                    Container(
                      color: Colors.yellow,
                      height: 50.0,
                      width: 50.0,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 50.0,
                      width: 50.0,
                    )
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 50.0,
                    width: 50.0,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    height: 50.0,
                    width: 50.0,
                  ),
                  Container(
                    color: Colors.orange,
                    height: 50.0,
                    width: 50.0,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 50.0,
                    width: 50.0,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50.0,
                    width: 50.0,
                  )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.pink,
                    height: 50.0,
                    width: 50.0,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
