import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../layouts/dashboard_mobile.dart';
import '../layouts/dashboard_tablet_landscape.dart';
import '../layouts/dashboard_tablet_portrait.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isTabletLandscape(context)) {
      return const DashboardTabletLandscape();
    }

    if (Responsive.isTabletPortrait(context)) {
      return const DashboardTabletPortrait();
    }

    return const DashboardMobile();
  }
}