import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
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
      initialRoute: '/', // 初期画面を設定
      // 画面遷移の部分
      routes: {
        '/': (context) => const HomeScreen(), // トップ画面
        '/horoscope': (context) {
          return const HoroscopeScreen();
        }
      },
    );
  }
}
