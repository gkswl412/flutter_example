import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('responsive'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'HamaH',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset(
              'asset/img/logo.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
