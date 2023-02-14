import 'package:fcm/firebase_options.dart';
import 'package:fcm/layout/main_layout.dart';
import 'package:fcm/screen/after_init_fcm_screen.dart';
import 'package:fcm/screen/push_list_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../const/userInfo.dart';

class ButtonModel {
  String title;
  VoidCallback callback;

  ButtonModel({
    required this.title,
    required this.callback,
  });
}

// Android용 새 Notification Channel 선언
const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'my_channel1',
  'my_channel1',
  description: 'This is my channel1',
  importance: Importance.max, // push 알림 수신할 경우 상단에 카톡처럼 알림 카드가 내려옴
);

// terminated 상태에서 상단 push 알림 클릭시 이벤트
checkMessage(BuildContext context) async {
  RemoteMessage? message = await FirebaseMessaging.instance.getInitialMessage();
  if (message != null) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PushListScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  List buttons = [
    ButtonModel(
      title: 'FCM 초기화',
      callback: () async {},
    ),
    ButtonModel(
      title: '토큰 얻기',
      callback: () async {},
    ),
    ButtonModel(title: '채널 생성', callback: () async {}),
  ];

  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    checkMessage(context);
    return FutureBuilder(
      future: setFCM(context),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MainLayout(
            title: 'homeScreen',
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: buttons
                      .map(
                        (buttonModel) => ElevatedButton(
                          onPressed: buttonModel.callback,
                          child: Text(buttonModel.title),
                        ),
                      )
                      .toList()),
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }

  Future<bool> setFCM(BuildContext context) async {
    await Firebase.initializeApp();

    // Android 에서는 별도의 확인 없이 리턴되지만, requestPermission()을 호출하지 않으면 수신되지 않는다.
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    FirebaseMessaging messaging = FirebaseMessaging.instance;
    if (await messaging.getToken() != null) {
      fcmToken = (await messaging.getToken())!;
      print(fcmToken);
    }

    // Notification Channel을 디바이스에 생성
    final FlutterLocalNotificationsPlugin plugin =
    FlutterLocalNotificationsPlugin();
    await plugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    // plugin 초기화
    await plugin.initialize(
      InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      ),
      // 포그라운드 상태에서 상단 알림 클릭시 이벤트
      onDidReceiveNotificationResponse: (details) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => PushListScreen()),
        );
      },
    );

    // foreground Listener 설정
    FirebaseMessaging.onMessage.listen((event) {
      RemoteNotification? notification = event.notification;
      AndroidNotification? androidNoti = event.notification?.android;

      if (notification != null && androidNoti != null) {
        plugin.show(
          0,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              importance: channel.importance,
            ),
          ),
        );
      }
    });

    // background Listener 설정
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => PushListScreen(),
      ));
    });

    return true;
  }
}
