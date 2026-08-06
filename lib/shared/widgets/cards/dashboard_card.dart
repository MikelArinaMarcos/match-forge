import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    this.imageAsset,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final String? imageAsset;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final isNarrow = width < 380;
        final isVeryNarrow = width < 320;

        final imageFraction = isVeryNarrow
            ? 0.36
            : isNarrow
            ? 0.39
            : 0.43;

        final contentLeft = width * imageFraction;

        final titleSize = isVeryNarrow
            ? 11.5
            : isNarrow
            ? 12.5
            : 14.0;

        final subtitleSize = isVeryNarrow
            ? 11.0
            : isNarrow
            ? 12.0
            : 13.0;

        final arrowSize = isVeryNarrow
            ? 26.0
            : isNarrow
            ? 28.0
            : 30.0;

        return Material(
          color: AppColors.surface,
          elevation: 2,
          shadowColor: Colors.black12,
          borderRadius: BorderRadius.circular(18),
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  if (imageAsset != null)
                    Image.asset(
                      imageAsset!,
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    )
                  else
                    Container(
                      color: color.withValues(alpha: 0.12),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                        left: width * 0.08,
                      ),
                      child: Icon(
                        icon,
                        size: isNarrow ? 52 : 62,
                        color: color,
                      ),
                    ),

                  if (imageAsset != null)
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.transparent,
                              Colors.white.withValues(alpha: 0.18),
                              Colors.white.withValues(alpha: 0.92),
                              Colors.white,
                            ],
                            stops: isNarrow
                                ? const [
                              0.00,
                              0.22,
                              0.38,
                              0.52,
                            ]
                                : const [
                              0.00,
                              0.28,
                              0.46,
                              0.60,
                            ],
                          ),
                        ),
                      ),
                    ),

                  Positioned(
                    left: contentLeft,
                    right: 10,
                    top: 0,
                    bottom: 0,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: isNarrow ? 6 : 10,
                              right: 4,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title.toUpperCase(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontSize: titleSize,
                                    height: 1.05,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  subtitle,
                                  maxLines: isVeryNarrow ? 2 : 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: subtitleSize,
                                    height: 1.30,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: arrowSize,
                          height: arrowSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withValues(alpha: 0.92),
                            border: Border.all(
                              color: color,
                              width: 1.4,
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            size: arrowSize * 0.60,
                            color: color,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned.fill(
                    child: IgnorePointer(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: const Color(0xFFE6EAF0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}