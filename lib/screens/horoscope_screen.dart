import 'package:flutter/material.dart';

class HoroscopeScreen extends StatelessWidget {
  const HoroscopeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('星座を選んでください'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(12, (index) {
          final signs = [
            'Aries',
            'Taurus',
            'Gemini',
            'Cancer',
            'Leo',
            'Virgo',
            'Libra',
            'Scorpio',
            'Sagittarius',
            'Capricorn',
            'Aquarius',
            'Pisces'
          ];
          return GestureDetector(
            onTap: () {
              print('${signs[index]}を選択しました');
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
    );
  }
}
