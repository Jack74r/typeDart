import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  int id;
  String createdAt;
  String updatedAt;
  String name;
  String photoUrl;
  bool isActive;
  bool isRecord;

  Team({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.photoUrl,
    this.isActive,
    this.isRecord,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
