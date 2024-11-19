import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'sys.g.dart';

@JsonSerializable()
class Sys extends INetworkModel<Sys> with EquatableMixin {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  Sys({
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  });

  @override
  Sys fromJson(Map<String, dynamic> json) => Sys.fromJson(json);

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SysToJson(this);

  @override
  List<Object?> get props => [type, id, country, sunrise, sunset];

  Sys copyWith({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) {
    return Sys(
      type: type ?? this.type,
      id: id ?? this.id,
      country: country ?? this.country,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
    );
  }
}
