import 'dart:math';
import 'package:flutter/material.dart';

class BackgroundWithStars extends StatelessWidget {
  const BackgroundWithStars({super.key, required this.child});

  final Widget child; // 中に表示するウィジェットを受け取る

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 宇宙の背景
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
        // 星の装飾
        Positioned.fill(
          child: CustomPaint(
            painter: StarPainter(),
          ),
        ),
        // 子ウィジェットを重ねる
        child,
      ],
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
