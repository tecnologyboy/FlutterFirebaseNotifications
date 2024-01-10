import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:firebase_core/firebase_core.dart';

//SHA1: 28:4D:C5:39:C5:43:B7:C4:EB:68:85:2D:21:78:3A:77:1F:62:FF:1C

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future initializeApp() async {
    //Push Notifications
    await Firebase.initializeApp();

    token = await FirebaseMessaging.instance.getToken();

    print('Token: $token');

    //Local Notifications
  }
}
