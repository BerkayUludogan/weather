import 'package:flutter/foundation.dart';
import 'package:weather_app/product/environment/app_configuration.dart';
import 'package:weather_app/product/environment/dev_env.dart';
import 'package:weather_app/product/environment/prod_env.dart';

final class AppEnvironment {
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }
  static late final AppConfiguration _config;

  /// Network base url
  static String get baseUrl => _config.baseUrl;
}

enum AppEnvironmentItems {
  /// Network base url
  baseUrl,
  apiKey;

  /// Get application environment item value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initialized');
    }
  }
}
