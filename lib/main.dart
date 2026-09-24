import 'package:flutter/material.dart';
import 'data/data.dart';
import 'profil/widget/info_row.dart';
import 'profil/widget/profile_header.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         backgroundColor: const Color.fromARGB(255, 243, 224, 81),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 230, 155, 14),
          title: const Text('My profile', style: TextStyle(fontFamily: 'MyFont', fontSize: 24)),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const ProfileHeader(name: MyName, university: MyUniversity),
                const SizedBox(height: 100),
                for (final f in facts) InfoRow(label: f.label, value: f.value),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
