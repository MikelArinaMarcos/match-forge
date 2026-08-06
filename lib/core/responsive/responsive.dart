import 'package:flutter/material.dart';

import 'breakpoints.dart';

class Responsive {
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static Orientation orientation(BuildContext context) =>
      MediaQuery.of(context).orientation;

  static bool isPortrait(BuildContext context) =>
      orientation(context) == Orientation.portrait;

  static bool isLandscape(BuildContext context) =>
      orientation(context) == Orientation.landscape;

  static bool isMobile(BuildContext context) =>
      width(context) < Breakpoints.mobile;

  static bool isTablet(BuildContext context) =>
      width(context) >= Breakpoints.mobile &&
          width(context) < Breakpoints.tablet;

  static bool isDesktop(BuildContext context) =>
      width(context) >= Breakpoints.tablet;

  static bool isTabletPortrait(BuildContext context) =>
      isTablet(context) && isPortrait(context);

  static bool isTabletLandscape(BuildContext context) =>
      isDesktop(context) && isLandscape(context);
}