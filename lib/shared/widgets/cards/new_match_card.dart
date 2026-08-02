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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary,
            AppColors.primaryDark,
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 30,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 38,
                backgroundColor: Colors.white24,
                child: Icon(
                  Icons.sports_soccer_rounded,
                  size: 42,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NUEVO PARTIDO',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Crea un nuevo partido en segundos',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primarySoft,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                size: 38,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}