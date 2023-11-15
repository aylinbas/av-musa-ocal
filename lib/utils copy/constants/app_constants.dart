import 'package:flutter/foundation.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppConstants {
  static bool getDevicePreviewEnable([bool showDebugMode = false]) =>
      showDebugMode ? kDebugMode : false;

  static final responseBreakpoints = [
    const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
    const ResponsiveBreakpoint.autoScale(800, name: TABLET),
    const ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
  ];
}
