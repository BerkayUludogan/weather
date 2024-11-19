// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDetail _$WeatherDetailFromJson(Map<String, dynamic> json) =>
    WeatherDetail(
      id: (json['id'] as num?)?.toInt(),
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherDetailToJson(WeatherDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
