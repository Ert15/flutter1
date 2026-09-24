import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.name,
    required this.university,
  });

  final String name;
  final String university;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/me.jpg', width: 240, height: 240),
        const SizedBox(height: 16),
        Text(name, style: const TextStyle(fontFamily: 'MyFont', fontSize: 24)),
        Text(university, style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
