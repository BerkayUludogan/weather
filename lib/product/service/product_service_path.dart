import 'package:weather_app/product/environment/dev_env.dart';

class ProductServicePath {
  static String weather(String cityName) {
    return '?q=$cityName&appid=${DevEnv().apiKey}&units=metric';
  }
}
