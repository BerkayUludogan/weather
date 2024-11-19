import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'coord.g.dart';

@JsonSerializable()
class Coord extends INetworkModel<Coord> with EquatableMixin {
  Coord({
    this.lon,
    this.lat,
  });

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
  double? lon;
  int? lat;

  @override
  Coord fromJson(Map<String, dynamic> json) => Coord.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$CoordToJson(this);

  @override
  List<Object?> get props => [lon, lat];

  Coord copyWith({
    double? lon,
    int? lat,
  }) {
    return Coord(
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
    );
  }
}
