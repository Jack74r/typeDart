import 'package:euroad_app_api/models/modeBase.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends ModelBase {
  User({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.username,
    this.role,
    this.firstname,
    this.lastname,
    this.birthday,
    this.photoUrl,
    this.phone,
    this.departement,
    this.isActive,
    this.description,
  });

  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String email;
  final String username;
  final String role;
  final String firstname;
  final String lastname;
  final DateTime birthday;
  final String photoUrl;
  final String phone;
  final String departement;
  final bool isActive;
  final String description;

  //factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  //Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String get serviceName => "user";

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
  @override
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => User.fromJson(json);
}
