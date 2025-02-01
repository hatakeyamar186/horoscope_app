import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String sign;

  const ResultScreen({super.key, required this.sign});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> fortunes = {
      "おひつじ座": "今日はエネルギッシュに行動できる日！",
      "おうし座": "新しい挑戦に最適な日です。",
      "ふたご座": "コミュニケーションが鍵となるでしょう。",
      "かに座": "家族や友人との時間を大切にしましょう。",
      "しし座": "リーダーシップを発揮するチャンス！",
      "おとめ座": "細かい作業に集中すると成果が出ます。",
      "てんびん座": "バランスを意識すると良い日です。",
      "さそり座": "情熱的に行動すると良い結果が！",
      "いて座": "旅行や冒険に最適な日。",
      "やぎ座": "計画を立てるのに最適な日です。",
      "みずがめ座": "独創的なアイデアが湧きそう。",
      "うお座": "直感を信じて行動しましょう。",
    };
    DateTime now = DateTime.now();
    String formattedDate = "${now.month}月${now.day}日";

    // 星座ごとの運勢を取得（デフォルトは"運勢が見つかりません"）
    String fortune = fortunes[sign] ?? "運勢が見つかりません";

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "$formattedDateの$signの運勢",
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Center(
          child: Text(
            fortune,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
