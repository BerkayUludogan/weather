import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/feature/home/mixin/home_view_mixin.dart';
import 'package:weather_app/feature/home/state/home_state.dart';
import 'package:weather_app/feature/home/view_model/home_view_model.dart';
import 'package:weather_app/product/service/utility/constants/project_lottie.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
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
                          state.weather?.name ?? 'loading city...',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Lottie.asset(
                          ProjectLottie.getWeatherAnimation(
                            state.weather?.weather?.first.main,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${state.weather?.main?.temp?.round()}°C',
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
