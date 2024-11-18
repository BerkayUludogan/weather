// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      cityName: json['name'] as String? ?? 'Unknown City',
      temperature: (json['main']['temp'] as num).toDouble(),
      mainCondition:
          (json['weather'] as List<dynamic>?)?.first['main'] as String? ??
              'Clear',
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'cityName': instance.cityName,
      'temperature': instance.temperature,
      'mainCondition': instance.mainCondition,
    };
