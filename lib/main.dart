import 'package:flutter/material.dart';

import 'package:notifications/services/push_notifications_services.dart';
import 'package:notifications/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Esta linea es para que la siguiente no de error por que aun no se encuentran creado los widgets

  await PushNotificationService.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          HomeScreen.routeName: (_) => const HomeScreen(),
          MessageScreen.routeName: (_) => const MessageScreen(),
        });
  }
}
