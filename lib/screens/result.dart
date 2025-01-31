import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String sign;

  const ResultScreen({super.key, required this.sign});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = "${now.month}月${now.day}日";

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "$formattedDateの$signの運勢",
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Center(
          child: Text(
            "〇〇です",
          ),
        ));
  }
}
