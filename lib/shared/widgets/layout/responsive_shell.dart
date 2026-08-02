import 'package:flutter/material.dart';

class ResponsiveShell extends StatelessWidget {
  const ResponsiveShell({
    super.key,
    required this.mobile,
    required this.tablet,
  });

  final Widget mobile;
  final Widget tablet;

  static const double tabletBreakpoint = 700;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= tabletBreakpoint) {
          return tablet;
        }

        return mobile;
      },
    );
  }
}