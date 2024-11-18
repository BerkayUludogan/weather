import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/feature/home/mixin/home_view_mixin.dart';
import 'package:weather_app/feature/home/state/home_state.dart';
import 'package:weather_app/feature/home/view_model/home_view_model.dart';
import 'package:weather_app/product/service/utility/constants/project_lottie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
/*   bool isLoading = false;

  Weather? weather;

  final weatherService = WeatherService(); */

  /* fetchWeather() async {
    isLoading = true;
    String cityName = await weatherService.getCurrentCity();
    try {
      final weather = await weatherService.getWeather(cityName);
      setState(() {
        weatherModel = weather;
      });
    } catch (e) {
      print(e);
    }
    isLoading = false;
  } */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: BlocProvider(
        create: (context) => homeViewModel,
        child: BlocBuilder<HomeViewModel, HomeState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.weather?.cityName ?? 'loading city...',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Lottie.asset(
                          ProjectLottie.getWeatherAnimation(
                            state.weather?.mainCondition,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${state.weather?.temperature?.round()}°C',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
