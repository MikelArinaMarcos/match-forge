import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: AppColors.textPrimary,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/mamkode_logo.png',
              height: 74,
            ),
          ),
          const SizedBox(height: 14),
          const Center(
            child: Text(
              'MATCH FORGE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 4),
          const Center(
            child: Text(
              'by MAMKODE',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 32),
          _SidebarItem(
            icon: Icons.dashboard_rounded,
            label: 'Dashboard',
            selected: true,
            onTap: () {},
          ),
          _SidebarItem(
            icon: Icons.sports_soccer_rounded,
            label: 'Partidos',
            onTap: () {},
          ),
          _SidebarItem(
            icon: Icons.groups_rounded,
            label: 'Jugadores',
            onTap: () {},
          ),
          _SidebarItem(
            icon: Icons.shield_rounded,
            label: 'Equipos',
            onTap: () {},
          ),
          _SidebarItem(
            icon: Icons.emoji_events_rounded,
            label: 'Competiciones',
            onTap: () {},
          ),
          _SidebarItem(
            icon: Icons.sports_rounded,
            label: 'Árbitros',
            onTap: () {},
          ),
          _SidebarItem(
            icon: Icons.query_stats_rounded,
            label: 'Estadísticas',
            onTap: () {},
          ),
          const Spacer(),
          _SidebarItem(
            icon: Icons.settings_rounded,
            label: 'Configuración',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              'Version 1.0.0',
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  const _SidebarItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.selected = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: selected
            ? AppColors.primary.withValues(alpha: 0.16)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 13,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: selected
                      ? AppColors.primary
                      : Colors.white70,
                ),
                const SizedBox(width: 14),
                Text(
                  label,
                  style: TextStyle(
                    color: selected
                        ? AppColors.primary
                        : Colors.white,
                    fontSize: 15,
                    fontWeight: selected
                        ? FontWeight.w700
                        : FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}