import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'wind.g.dart';

@JsonSerializable()
class Wind extends INetworkModel<Wind> with EquatableMixin {
  Wind({
    this.speed,
    this.deg,
    this.gust,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
  double? speed;
  int? deg;
  double? gust;

  @override
  Wind fromJson(Map<String, dynamic> json) => Wind.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$WindToJson(this);

  @override
  List<Object?> get props => [speed, deg, gust];

  Wind copyWith({
    double? speed,
    int? deg,
    double? gust,
  }) {
    return Wind(
      speed: speed ?? this.speed,
      deg: deg ?? this.deg,
      gust: gust ?? this.gust,
    );
  }
}
