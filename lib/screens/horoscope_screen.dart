import 'dart:math';
import 'package:flutter/material.dart';
import 'package:horoscope_app/screens/result.dart';

class HoroscopeScreen extends StatelessWidget {
  const HoroscopeScreen({super.key});

  // 星座リスト（リストを'build'メソッドの外に定義)
  static final List<String> signs = [
    'おひつじ座',
    'おうし座',
    'ふたご座',
    'かに座',
    'しし座',
    'おとめ座',
    'てんびん座',
    'さそり座',
    'いて座',
    'やぎ座',
    'みずがめ座',
    'うお座'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '星座を選んでください',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, // 影をなくす
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF000428), // 深い青
                Color(0xFF004e92), // 明るい青
              ],
            ),
          ),
          child: CustomPaint(
            painter: StarPainter(),
          ),
        ),
      ),
      body: Stack(
        children: [
          // 背景グラデーション
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000428),
                  Color(0xFF004e92),
                ],
              ),
            ),
          ),
          // 星を描画
          Positioned.fill(
            child: CustomPaint(
              painter: StarPainter(),
            ),
          ),
          // グリッドビュー
          GridView.count(
            crossAxisCount: 3,
            children: List.generate(12, (index) {
              final signs = [
                'おひつじ座',
                'おうし座',
                'ふたご座',
                'かに座',
                'しし座',
                'おとめ座',
                'てんびん座',
                'さそり座',
                'いて座',
                'やぎ座',
                'みずがめ座',
                'うお座'
              ];
              return GestureDetector(
                onTap: () {
                  // 画面遷移
                  Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: signs[index], // signを探す
                  );
                },
                child: Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      signs[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

// 星の描画クラス
class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;
    final random = Random();
    for (var i = 0; i < 100; i++) {
      final dx = random.nextDouble() * size.width;
      final dy = random.nextDouble() * size.height;
      final radius = random.nextDouble() * 2;
      canvas.drawCircle(Offset(dx, dy), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
