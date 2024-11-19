import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vexana/vexana.dart';
import 'package:weather_app/feature/home/state/home_state.dart';
import 'package:weather_app/product/service/manager/product_network_manager.dart';
import 'package:weather_app/product/service/model/weather_response.dart';
import 'package:weather_app/product/service/product_service_path.dart';

final class HomeViewModel extends Cubit<HomeState> {
  HomeViewModel() : super(const HomeState(isLoading: false));

  WeatherResponse? weather;

  Future<void> fetchWeather() async {
    emit(state.copyWith(loading: true));
    try {
      final cityName = await getCurrentCity();
      final manager = ProductNetworkManager.base();
      final response = await manager.send<WeatherResponse, WeatherResponse>(
        ProductServicePath.weather(cityName),
        parseModel: WeatherResponse(),
        method: RequestType.GET,
      );
      print('Parsed Weather: $weather');
      print('*' * 50);
      print(cityName);
      print('Response: ${response.data}');
      print('Error: ${response.error}');
      print('*' * 50);
      print('Response Status Code: ${response.error?.statusCode}');
      print('Response Body: ${response.data}');
      if (response.data != null) {
        emit(state.copyWith(weather: response.data));
      }
      // weather = response.data;
    } catch (e) {
      print('ERROR  :  $e');
    }
  }

  Future<String> getCurrentCity() async {
    final position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    );

    final placeMarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    final city = placeMarks[0].locality;

    return city ?? '';
  }
}
