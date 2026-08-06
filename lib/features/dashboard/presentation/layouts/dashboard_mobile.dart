import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../shared/widgets/cards/dashboard_card.dart';
import '../../../../shared/widgets/cards/new_match_card.dart';
import '../../../../shared/widgets/layout/app_header.dart';
import '../../../../shared/widgets/layout/app_sidebar.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: AppSidebar()),
      body: SafeArea(
        child: Column(
          children: [
            const AppHeader(title: 'Dashboard', showMenuButton: true),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(12, 14, 12, 24),
                child: Column(
                  children: [
                    NewMatchCard(onTap: () {}),
                    const SizedBox(height: 14),
                    _MobileDashboardCard(
                      icon: Icons.groups_rounded,
                      title: 'Jugadores',
                      subtitle: 'Gestiona toda la plantilla',
                      color: AppColors.primary,
                      imageAsset: 'assets/ui/card_players.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),
                    _MobileDashboardCard(
                      icon: Icons.shield_rounded,
                      title: 'Equipos',
                      subtitle: 'Administra tus equipos',
                      color: const Color(0xFF0877D1),
                      imageAsset: 'assets/ui/card_teams.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),
                    _MobileDashboardCard(
                      icon: Icons.emoji_events_rounded,
                      title: 'Competiciones',
                      subtitle: 'Organiza y consulta competiciones',
                      color: AppColors.secondary,
                      imageAsset: 'assets/ui/card_competitions.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),
                    _MobileDashboardCard(
                      icon: Icons.sports_rounded,
                      title: 'Árbitros',
                      subtitle: 'Gestiona los árbitros',
                      color: const Color(0xFF7C4DFF),
                      imageAsset: 'assets/ui/card_referees.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),
                    _MobileDashboardCard(
                      icon: Icons.query_stats_rounded,
                      title: 'Estadísticas',
                      subtitle: 'Analiza datos y rendimiento',
                      color: AppColors.success,
                      imageAsset: 'assets/ui/card_statistics.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),
                    _MobileDashboardCard(
                      icon: Icons.settings_rounded,
                      title: 'Configuración',
                      subtitle: 'Ajustes de la aplicación',
                      color: AppColors.textSecondary,
                      imageAsset: 'assets/ui/card_settings.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 14),
                    const _MobileNextMatchPanel(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MobileDashboardCard extends StatelessWidget {
  const _MobileDashboardCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.imageAsset,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final String imageAsset;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: DashboardCard(
        icon: icon,
        title: title,
        subtitle: subtitle,
        color: color,
        imageAsset: imageAsset,
        onTap: onTap,
      ),
    );
  }
}

class _MobileNextMatchPanel extends StatelessWidget {
  const _MobileNextMatchPanel();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE6EAF0)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary.withValues(alpha: 0.12),
            ),
            child: const Icon(
              Icons.calendar_month_rounded,
              color: AppColors.primary,
              size: 25,
            ),
          ),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PRÓXIMO PARTIDO',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: AppColors.primary,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Todavía no hay ningún partido programado',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_rounded,
            color: AppColors.textSecondary,
          ),
        ],
      ),
    );
  }
}
