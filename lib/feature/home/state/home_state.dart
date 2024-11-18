import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/product/service/model/weather.dart';

@immutable
final class HomeState extends Equatable {
  const HomeState({
    required this.isLoading,
    this.weather,
  });

  final bool isLoading;
  final Weather? weather;
  @override
  List<Object?> get props => [isLoading, weather];
  HomeState copyWith({bool loading = false, Weather? weather}) {
    return HomeState(
      isLoading: loading,
      weather: weather,
    );
  }
}
