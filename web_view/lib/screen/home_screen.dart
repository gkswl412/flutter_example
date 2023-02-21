import 'package:flutter/material.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({Key? key}) : super(key: key);
  String homeUrl = 'https://sc.hismart.co.kr/mobile/targetMap.do?targetId=9276&targetType=worker&targetName=%EA%B9%80%EB%AA%85%EC%A4%91&_csrf=e2be7636-bd28-4232-a429-d0ef8f932c27';

  @override
  Widget build(BuildContext context) {
    checkPermission();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                if(controller == null) {
                  return;
                }
                controller!.loadUrl(homeUrl);
              },
              icon: Icon(
                Icons.home,
              )
          ),
        ],
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted,
          geolocationEnabled: true,
        );
      }),
    );
  }

  checkPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
  }
}
