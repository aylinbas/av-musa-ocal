import 'package:auto_route/auto_route.dart';
import 'package:av_musa_ocal/screen/feature/login/login_page.dart';
import 'package:av_musa_ocal/screen/feature/verification/verification_page.dart';
import 'package:flutter/material.dart';

import '../../screen/feature/user_info/user_info_page.dart';
import '../../screen/feature/welcome/screen/welcome_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true, path: '/welcome'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(page: VerificationRoute.page, path: '/verification_page'),
        AutoRoute(page: UserInfoRoute.page, path: '/user_info_page'),
      ];
}
