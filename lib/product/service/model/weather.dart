import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather extends INetworkModel<Weather> with EquatableMixin {
  Weather({
    this.cityName,
    this.temperature,
    this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  String? cityName;
  double? temperature;
  String? mainCondition;

  @override
  Weather fromJson(Map<String, dynamic> json) => Weather.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @override
  List<Object?> get props => [cityName, temperature, mainCondition];

  Weather copyWith({
    String? cityName,
    double? temperature,
    String? mainCondition,
  }) {
    return Weather(
      cityName: cityName ?? this.cityName,
      temperature: temperature ?? this.temperature,
      mainCondition: mainCondition ?? this.mainCondition,
    );
  }
}
