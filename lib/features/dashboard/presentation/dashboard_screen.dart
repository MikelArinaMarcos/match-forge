import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../shared/widgets/cards/dashboard_card.dart';
import '../../../../shared/widgets/cards/new_match_card.dart';
import '../../../../shared/widgets/layout/app_header.dart';
import '../../../../shared/widgets/layout/app_sidebar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const AppSidebar(),
          Expanded(
            child: Column(
              children: [
                const AppHeader(title: 'Match Forge', showMenuButton: false),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        NewMatchCard(onTap: () {}),
                        const SizedBox(height: 24),
                        GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 1.6,
                          children: [
                            DashboardCard(
                              icon: Icons.groups_rounded,
                              title: 'Jugadores',
                              subtitle: 'Gestiona toda la plantilla',
                              color: AppColors.primary,
                              onTap: () {},
                            ),
                            DashboardCard(
                              icon: Icons.shield_rounded,
                              title: 'Equipos',
                              subtitle: 'Administra tus equipos',
                              color: const Color(0xFF00AFAF),
                              onTap: () {},
                            ),
                            DashboardCard(
                              icon: Icons.emoji_events_rounded,
                              title: 'Competiciones',
                              subtitle: 'Organiza las competiciones',
                              color: AppColors.secondary,
                              onTap: () {},
                            ),
                            DashboardCard(
                              icon: Icons.sports_rounded,
                              title: 'Árbitros',
                              subtitle: 'Gestiona el equipo arbitral',
                              color: const Color(0xFF7C4DFF),
                              onTap: () {},
                            ),
                            DashboardCard(
                              icon: Icons.query_stats_rounded,
                              title: 'Estadísticas',
                              subtitle: 'Analiza datos y rendimiento',
                              color: AppColors.success,
                              onTap: () {},
                            ),
                            DashboardCard(
                              icon: Icons.settings_rounded,
                              title: 'Configuración',
                              subtitle: 'Ajustes de la aplicación',
                              color: AppColors.textSecondary,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
