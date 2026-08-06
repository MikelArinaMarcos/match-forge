import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../shared/widgets/cards/dashboard_card.dart';
import '../../../../shared/widgets/cards/new_match_card.dart';
import '../../../../shared/widgets/layout/app_header.dart';
import '../../../../shared/widgets/layout/app_sidebar.dart';

class DashboardTabletLandscape extends StatelessWidget {
  const DashboardTabletLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const AppSidebar(),
            Expanded(
              child: Column(
                children: [
                  const AppHeader(title: 'Dashboard', showMenuButton: false),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(18, 18, 18, 24),
                      child: Column(
                        children: [
                          NewMatchCard(onTap: () {}),
                          const SizedBox(height: 18),
                          GridView.count(
                            crossAxisCount: 3,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 1.75,
                            children: [
                              DashboardCard(
                                icon: Icons.groups_rounded,
                                title: 'Jugadores',
                                subtitle: 'Gestiona toda la plantilla',
                                color: AppColors.primary,
                                imageAsset: 'assets/ui/card_players.png',
                                onTap: () {},
                              ),
                              DashboardCard(
                                icon: Icons.shield_rounded,
                                title: 'Equipos',
                                subtitle: 'Administra tus equipos',
                                color: const Color(0xFF0877D1),
                                imageAsset: 'assets/ui/card_teams.png',
                                onTap: () {},
                              ),
                              DashboardCard(
                                icon: Icons.emoji_events_rounded,
                                title: 'Competiciones',
                                subtitle: 'Organiza y consulta competiciones',
                                color: AppColors.secondary,
                                imageAsset: 'assets/ui/card_competitions.png',
                                onTap: () {},
                              ),
                              DashboardCard(
                                icon: Icons.sports_rounded,
                                title: 'Árbitros',
                                subtitle: 'Gestiona los árbitros',
                                color: const Color(0xFF7C4DFF),
                                imageAsset: 'assets/ui/card_referees.png',
                                onTap: () {},
                              ),
                              DashboardCard(
                                icon: Icons.query_stats_rounded,
                                title: 'Estadísticas',
                                subtitle: 'Analiza datos y rendimiento',
                                color: AppColors.success,
                                imageAsset: 'assets/ui/card_statistics.png',
                                onTap: () {},
                              ),
                              DashboardCard(
                                icon: Icons.settings_rounded,
                                title: 'Configuración',
                                subtitle: 'Ajustes de la aplicación',
                                color: AppColors.textSecondary,
                                imageAsset: 'assets/ui/card_settings.png',
                                onTap: () {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 18),
                          const _NextMatchPanel(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NextMatchPanel extends StatelessWidget {
  const _NextMatchPanel();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
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
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary.withValues(alpha: 0.12),
            ),
            child: const Icon(
              Icons.calendar_month_rounded,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          const SizedBox(width: 18),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PRÓXIMO PARTIDO',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                    color: AppColors.primary,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Todavía no hay ningún partido programado',
                  style: TextStyle(
                    fontSize: 16,
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
