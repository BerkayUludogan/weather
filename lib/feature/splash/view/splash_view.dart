import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/feature/splash/mixin/splash_view_mixin.dart';
import 'package:weather_app/product/service/utility/constants/project_lottie.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SplashViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: ProjectLottie.splash.lottieAsset(),
      ),
    );
  }
}
