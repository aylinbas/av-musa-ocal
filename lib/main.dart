import 'package:av_musa_ocal/common/dark_theme.dart';
import 'package:av_musa_ocal/common/light_theme.dart';
import 'package:av_musa_ocal/utils%20copy/app_router/app_router.dart';
import 'package:av_musa_ocal/utils%20copy/constants/app_constants.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.dark,
      title: 'Av. Musa Öcal',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      builder: (context, child) => ResponsiveWrapper.builder(child,
          minWidth: 480,
          maxWidth: 1280,
          defaultScale: true,
          breakpoints: AppConstants.responseBreakpoints),
    );
  }
}
