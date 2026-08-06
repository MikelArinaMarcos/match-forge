import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import '../features/dashboard/presentation/screens/dashboard_screen.dart';

class MatchForgeApp extends StatelessWidget {
  const MatchForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Match Forge',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const DashboardScreen(),
    );
  }
}