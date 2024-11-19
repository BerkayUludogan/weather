import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/feature/splash/view/splash_view.dart';
import 'package:weather_app/product/init/app_environment.dart';
import 'package:weather_app/product/navigation/app_router.gr.dart';

mixin SplashViewMixin on State<SplashView> {
  @override
  void initState() {
    super.initState();
    print(AppEnvironmentItems.baseUrl.value);
    Future.delayed(
      const Duration(seconds: 3),
      () => unawaited(context.router.replace(const HomeRoute())),
    );
  }
}
