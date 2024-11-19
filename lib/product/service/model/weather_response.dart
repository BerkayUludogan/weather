import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
import 'package:weather_app/product/service/model/clouds.dart';
import 'package:weather_app/product/service/model/coord.dart';
import 'package:weather_app/product/service/model/main.dart';
import 'package:weather_app/product/service/model/sys.dart';
import 'package:weather_app/product/service/model/weather_detail.dart';
import 'package:weather_app/product/service/model/wind.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse extends INetworkModel<WeatherResponse>
    with EquatableMixin {
  WeatherResponse({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
  Coord? coord;
  List<WeatherDetail>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  @override
  WeatherResponse fromJson(Map<String, dynamic> json) =>
      WeatherResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);

  @override
  List<Object?> get props => [
        coord,
        weather,
        base,
        main,
        visibility,
        wind,
        clouds,
        dt,
        sys,
        timezone,
        id,
        name,
        cod,
      ];
}
