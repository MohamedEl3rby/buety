import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../firebase_options.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('Check Your New Notifications ${message.data.toString()}');
  Fluttertoast.showToast(msg: 'Check Your New Notifications');
}

Future<void> configigration(
    FirebaseMessaging messaging, FirebaseDatabase database) async {
  /// 0
  DatabaseReference ref = database.ref("notifications");

  /// 1

  /// 2
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  /// 3
  debugPrint('User granted permission: ${settings.authorizationStatus}');

  /// 4
  switch (settings.authorizationStatus) {
    case AuthorizationStatus.authorized:

      /// 1
      String? token = await messaging.getToken();
      debugPrint('My Token $token');

      /// When App In OpenState
      FirebaseMessaging.onMessage.listen((event) {}).onData((data) async {
        Fluttertoast.showToast(msg: 'New Notification');
        DatabaseReference newNotification = ref.push();
        await newNotification.set({
          "body": data.notification!.body,
          "title": data.notification!.title
        });
      });

      /// When App Open from background or terminated
      FirebaseMessaging.onMessageOpenedApp.listen((event) {
        debugPrint('EVENT WHEN OPENED Is ${event.data.toString()}');
        Fluttertoast.showToast(msg: 'New Notification');
      });

      /// When App Open in background
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
      break;
    case AuthorizationStatus.denied:
      Fluttertoast.showToast(msg: 'Notification Permission Is denied');
      break;
    case AuthorizationStatus.notDetermined:
      Fluttertoast.showToast(msg: 'Notification Permission Is notDetermined');
      break;
    case AuthorizationStatus.provisional:
      Fluttertoast.showToast(msg: 'Notification Permission Is provisional');
      break;
  }
}
