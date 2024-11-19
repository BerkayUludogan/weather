import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_detail.g.dart';

@JsonSerializable()
class WeatherDetail extends Equatable {
  WeatherDetail({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory WeatherDetail.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailFromJson(json);
  int? id;
  String? main;
  String? description;
  String? icon;

  Map<String, dynamic> toJson() => _$WeatherDetailToJson(this);

  @override
  List<Object?> get props => [id, main, description, icon];
}
