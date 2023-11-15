import 'package:auto_route/auto_route.dart';
import 'package:av_musa_ocal/extension/context_extensions.dart';

import 'package:av_musa_ocal/utils/gen/colors.gen.dart';
import 'package:flutter/material.dart';

import '../../../../utils copy/app_router/app_router.dart';
import '../../../../utils copy/constants/assets_constants.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: AssetsConstants.instance.getSvgImages.group1
                    .svg(width: context.width * .4)),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Av. Musa ÖCAL',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Hoşgeldiniz...',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.gold),
                    onPressed: () => context.router.push(LoginRoute()),
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(color: AppColors.cream),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
