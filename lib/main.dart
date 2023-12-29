import 'package:flutter/material.dart';
import 'package:notifications/screens/screens.dart';

void main() => runApp(const MyApp());

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
