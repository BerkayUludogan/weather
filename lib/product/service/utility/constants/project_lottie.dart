import 'package:lottie/lottie.dart';

enum ProjectLottie {
  sun('sun'),
  cloud('cloud'),
  rain('rain'),
  thunder('thunder'),
  splash('splash');

  final String value;

  const ProjectLottie(this.value);

  static String getWeatherAnimation(String? value) {
    switch (value?.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return ProjectLottie.cloud._path;
      case 'rain':
        return ProjectLottie.rain._path;
      case 'thunderstorm':
        return ProjectLottie.thunder._path;

      default:
        return ProjectLottie.sun._path;
    }
  }

  LottieBuilder lottieAsset() => Lottie.asset(
        _path,
      );
  /* Lottie.asset(
          ProjectLottie.splash.value,
        ) */
  String get _path => 'assets/lottie/$value.json';
}

extension ProjectLottieExtension on ProjectLottie {}
