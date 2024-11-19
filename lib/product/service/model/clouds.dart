import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'clouds.g.dart';

@JsonSerializable()
class Clouds extends INetworkModel<Clouds> with EquatableMixin {
  Clouds({
    this.all,
  });

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
  int? all;

  @override
  Clouds fromJson(Map<String, dynamic> json) => Clouds.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$CloudsToJson(this);

  @override
  List<Object?> get props => [all];

  Clouds copyWith({
    int? all,
  }) {
    return Clouds(
      all: all ?? this.all,
    );
  }
}
