import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';

class NewMatchCard extends StatelessWidget {
  const NewMatchCard({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final isMobile = width < 600;
        final isCompactTablet = width >= 600 && width < 900;

        final cardHeight = isMobile ? 190.0 : 220.0;
        final textLeft = isMobile
            ? width * 0.39
            : isCompactTablet
            ? width * 0.43
            : width * 0.39;

        final arrowSize = isMobile ? 58.0 : 72.0;
        final rightSpace = isMobile ? 82.0 : 120.0;

        return Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(22),
          child: InkWell(
            borderRadius: BorderRadius.circular(22),
            onTap: onTap,
            child: Container(
              width: double.infinity,
              height: cardHeight,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/ui/hero_background.png',
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.05),
                            Colors.black.withValues(alpha: 0.42),
                          ],
                          stops: const [0.30, 0.62, 1],
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: textLeft,
                    right: rightSpace,
                    top: 22,
                    bottom: 22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ACCIÓN RÁPIDA',
                          maxLines: 1,
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.8,
                          ),
                        ),
                        const SizedBox(height: 8),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'NUEVO PARTIDO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isMobile ? 27 : 38,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 9),
                        Text(
                          'Crea un nuevo partido en segundos',
                          maxLines: isMobile ? 2 : 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.90),
                            fontSize: isMobile ? 14 : 18,
                            height: 1.25,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    right: isMobile ? 20 : 34,
                    top: (cardHeight - arrowSize) / 2,
                    child: Container(
                      width: arrowSize,
                      height: arrowSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withValues(alpha: 0.18),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.65),
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        size: isMobile ? 32 : 40,
                        color: Colors.white,
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