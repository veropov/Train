import 'dart:async';
import 'package:timezone/timezone.dart';
import 'package:timezone/data/latest.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/subjects.dart';

class LocalNotificationService {
  LocalNotificationService();

  final _localNotificationService = FlutterLocalNotificationsPlugin();

  Future <void> initializeNotification() async {
    const AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('@drawable/ic_stat_directions_run');
    DarwinInitializationSettings darwinInitializationSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );

    InitializationSettings initializationSettings  = InitializationSettings(
      android: androidInitializationSettings, 
      iOS: darwinInitializationSettings
    );

    await _localNotificationService.initialize(initializationSettings);
  }

  Future <NotificationDetails> _notificationDetails() async {
    const androidDetails = AndroidNotificationDetails(
      'channelId',
      'channelName',
      channelDescription: 'description',
      importance: Importance.max,
      priority: Priority.max,
      playSound: true
    );
    const iosDetails = DarwinNotificationDetails();

    return const NotificationDetails(
      android: androidDetails,
      iOS: iosDetails
    );
    
  }

  Future <void> showNotification({
    required int id,
    required String title,
    required String body
  }) async {
    final details = await _notificationDetails();
    await _localNotificationService.show(id, title, body, details);
  }

  void _onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) {
    print('id $id');
  }
}

