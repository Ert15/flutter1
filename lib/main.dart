import 'package:flutter/material.dart';

import 'package:kbtu_flutter1projek/profil/widget/stopwatch_card.dart';
import 'package:kbtu_flutter1projek/profil/widget/tap_card.dart';
import 'package:kbtu_flutter1projek/profil/widget/two_way_counter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: const Color.fromARGB(255, 239, 152, 39),
    appBar: AppBar(
      title: const Text('A screen that reacts'),
      backgroundColor: const Color.fromARGB(255, 255, 194, 12),
    ),
    body: const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TapCard(),
          SizedBox(height: 16),
          TwoWayCounter(),
          SizedBox(height: 16),
          StopwatchCard(),
        ],
      ),
    ),
  );
}
