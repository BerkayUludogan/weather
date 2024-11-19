import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/product/service/model/weather_response.dart';

@immutable
final class HomeState extends Equatable {
  const HomeState({
    required this.isLoading,
    this.weather,
  });

  final bool isLoading;
  final WeatherResponse? weather;
  @override
  List<Object?> get props => [isLoading, weather];
  HomeState copyWith({bool loading = false, WeatherResponse? weather}) {
    return HomeState(
      isLoading: loading,
      weather: weather,
    );
  }
}
