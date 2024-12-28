import 'package:flutter/material.dart';
import 'screens/horoscope_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '星座占い',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HoroscopeScreen(), //トップ画面を呼び出す
    );
  }
}
