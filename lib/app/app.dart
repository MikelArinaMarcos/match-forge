import 'package:flutter/material.dart';

class MatchForgeApp extends StatelessWidget {
  const MatchForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Match Forge',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text('Match Forge'),
        ),
      ),
    );
  }
}